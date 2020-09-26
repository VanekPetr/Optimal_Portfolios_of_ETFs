$TITLE ETF Porftolio Modeling, Backtesting
* Creates optimal portfolio from the whole universe of ETFs using
* Monte Carlo method

$eolcom //
option optcr=0.0001;

SETS
         Date      'Dates'
         Asset     'Assets'
         Weeks     'Weeks for bootstrapping' /w1*w4/
         Scenarios 'Scenarios for bootstrapping'
         Periods   'periods'
;
ALIAS(Date,t);
ALIAS(Asset,i);
ALIAS(Weeks,W);
ALIAS(Scenarios,s);
ALIAS(Periods, p);

PARAMETER
         ScenarioReturnP(i,s,p) 'Return of asset i at date t and scenario s'
         ReturnsMonth(p, i)     'Return of asset i at date t'
         CVaRp(p)               'CVaR target'
         ERP(p)                 'Expected return target'
         SummaryReport(*,*)     'Saving summary report'
         ScenarioReturn(i,s)    'Scenarior return of asset i in scenario s'
;

****Loading Data file.***
*DO NOT MODIFY
//LOADING THE INVESTING PERIODS
$GDXIN RollingScenarios250
$LOAD  Periods
$GDXIN

*TO MODIFY
//GENERATED SCENARIOS USING BOOTSTRAPPING OR MONTE CARLO METHOD
$GDXIN MCscenarios
$LOAD  Asset Scenarios ScenarioReturnP
$GDXIN

//GENERATED FIXED SCENARIOS FOR THE FIRST PERIOD
$GDXIN FixedScenarios250
$LOAD  ScenarioReturn
$GDXIN

//TARGETS
$GDXIN SP500_TargetsRollingMC250
$LOAD  SummaryReport
$GDXIN

*DO NOT MODIFY
//RETURNS FOR EACH INVESTING PERIOD
$GDXIN ReturnMonthly
$LOAD  ReturnsMonth
$GDXIN

//DEFINE CVaR AND EXPECTED RETURN
CVaRp(p) = SummaryReport("CVaR",p);
ERP(p) = SummaryReport("ExpectedReturn", p);

DISPLAY  Asset, Scenarios, ScenarioReturnP, ReturnsMonth, ERP;



SCALARS
        Budget           'Nominal investment budget'
        alpha            'Confidence level'
        Lambda           'Risk aversion parameter'
        CVaRLim          'CVaR limit'
        ExpRetLim        'Expected Return Limit'
        c                'Variable costs'
        rebalanceAfter   'After how many months to rebalance the portfolio'
        loopConst        'Constant for loop'
        rebalancingNum   'Constant for rebalancing'
;


Budget    = 100000.0;
CVaRLim   = sum(p$(ord(p)=1), CVaRp(p))*Budget;     //Target p1 form the gdx file
ExpRetLim = sum(p$(ord(p)=1), ERP(p))*Budget;       //Target p1 form the gdx file
c         = 0.001;                                 //Variable cost 0.23 percent

display CVaRLim, ExpRetLim;


PARAMETERS
        pr(s)      'Scenario probability'
        R(i,s)     'Final values "R_is"'
        EP(i)      'Expected final values "mu_i"'
        x_old(i)   'Old, saved x(i) from previous period'
        Cash_old   'Cash holded from the previous period'
;

//INITIALIZATION
loop(i,
x_old(i) = 0;
);

pr(s) = 1.0 / CARD(s);

R(i,s) = 1 + ScenarioReturn(i,s);

EP(i) = SUM(s, pr(s) * R(i,s));






POSITIVE VARIABLES
         x_new(i)        'New updated x using model'
         VaRDev(s)       'Measures of the deviation'
         x_b(i)          'What we buy'
         x_s(i)          'What we sell'
         Costs           'Cost of selling and buying assets'
         Cash            'Cash which is not invested'
         increaseCash    'Increase of a cash holding in a given period'
         decreaseCash    'Decrease of a cash holding in a given period'
;

VARIABLES
         Losses(s)       'The scenario loss function'
         VaR             'The alpha Value-at-Risk'
         CVaR            'The alpha Conditional Value-at-Risk'
         ExpectedReturn  'Expected return of the portfolio'
         obj             'Objective function value'
;


EQUATIONS
         BudgetCon        'Equation defining the budget constraint'
         ReturnCon        'Equation defining the portfolio expected return'
         LossDefCon(s)    'Equation defining the losses'
         VaRDevCon(s)     'Equation defining the VaRDev variable'
         CVaRDefCon       'Equation defining the CVaR'
         ObjectivFunc1    'lambda formulation of the MeanCVaR model'
         ObjectivFunc2    'lambda formulation of the MeanCVaR model'
         CVaRLimCon       'Constraint limiting the CVaR'
         ReturnLimCon     'Constraint on a minimum expected return'
         DefXnew(i)       'Cefining Xnew for two periods'
         SellCond(i)      'Condition for selling'
         BuyCond          'Condition for buying'
         CostsDef         'Definition of costs'
         CashDef          'Definition of the cash account'
         CashIncrease     'Condition for the incerase in Cash position'
         CashDecrease     'Condition for the decrease in Cash position'
         InitialCash      'Condition that we are fully invested in the first period'
         MaxVol2(i)
         MaxVol1(i)
;



*--Objective------

ObjectivFunc1 ..           Obj            =E= (1-lambda)*ExpectedReturn - lambda*CVaR;
ObjectivFunc2 ..           Obj            =E= (1-lambda)*(ExpectedReturn + Cash) - lambda*CVaR;

*--s.t.-----------
BudgetCon ..              sum(i, x_new(i)) =E= (1-c)*Budget;

ReturnCon ..              ExpectedReturn =E= sum(i, EP(i)*x_new(i));

LossDefCon(s) ..          Losses(s)      =E= -1*sum(i, R(i,s)*x_new(i));

VaRDevCon(s) ..           VaRDev(s)      =G= Losses(s) - VaR;

CVaRDefCon ..             CVaR           =E= VaR + (sum(s, pr(s)*VarDev(s) ) )/(1 - alpha);

CVaRLimCon ..             CVaR           =L= CVaRLim;

ReturnLimCon ..           ExpectedReturn =G= ExpRetLim;

MaxVol1(i)..              x_new(i)       =L= (1/3)*(1-c)*Budget;

*--Six extra equations for the second and following periods

DefXnew(i) ..             x_new(i)  =E= x_old(i) - x_s(i) + x_b(i);

BuyCond ..                sum(i,x_b(i))  =E= sum(i, x_s(i)) - Costs + decreaseCash - increaseCash;

//CostsDef ..               Costs          =E= sum(j, x_s(j)*c)+ sum(j, x_b(j)*c) + c*BudgetDif ;

CostsDef ..               Costs          =E= sum(i, x_s(i)*c)+ sum(i, x_b(i)*c);

CashDef ..                Cash           =E= Cash_old + increaseCash - decreaseCash;

CashIncrease ..           increaseCash   =L= sum(i, x_old(i));

CashDecrease ..           decreaseCash   =L= Cash_old;

//MaxVol2(j)..              x_new(j)       =L= 0.1*(1-c)*(Budget + (1-c)*BudgetDif + Cash);

MaxVol2(i)..              x_new(i)       =L= (1/3)*(Budget-Costs);




*--Implementation of Mean/CVaR model-----------

MODEL CVaRModel 'CVaR model for the first period'/
ReturnCon, LossDefCon, VaRDevCon, CVaRDefCon, ObjectivFunc1, CVaRLimCon, ReturnLimCon,
BudgetCon, MaxVol1/;
MODEL CVaRModel2 'CVaR model for the ongoing periods'/
ReturnCon, LossDefCon, VaRDevCon, CVaRDefCon, ObjectivFunc2, CVaRLimCon, ReturnLimCon,
DefXnew, BuyCond, CostsDef, CashDef, MaxVol2/;



PARAMETERS
         CVaRRes(p)
         ExpectedReturnRes(p)
         x_oldRes(p, i)
         SummaryReportAll(*,*)
         SummaryReport2(*,*,*)
         BestCase(p)
         WorstCase(p)
         CashRes(p)
;

$ontext
//////////////////////////////////////////////////
// MINIMIZING CVaR ///////////////////////////////
//////////////////////////////////////////////////
lambda = 1;
alpha = 0.95;


//Results for the FIRST PERIOD
SOLVE CVaRModel Maximizing Obj using LP;
display x_new.l, CVaR.l, ExpectedReturn.l, CVaRLim;

CVaRRes("p1") = CVaR.l/100000;
x_oldRes("p1",i)=x_new.l(i);


//ONGOING PERIODS
loop(p$(ord(p)>1),
         //Saving results from the first period model to the Parameter + modification by returns to
         //be used in the second period

         x_old(i) = x_new.l(i)*(1+ReturnsMonth(p, i));
         Display x_old;

         BestCase(p) = Smax(s,sum(i,R(i,s)*x_old(i)));
         WorstCase(p) = Smin(s,sum(i,R(i,s)*x_old(i)));

         R(i,s) = 1 + ScenarioReturnP(i,s,p);
         EP(i) = SUM(s, pr(s) * R(i,s));

         //New Targets for the second period
         ExpRetLim = ERP(p+1)*sum(i, x_old(i));     //Target p2 form the gdx file


         //Min CVaR
         lambda = 1;
         SOLVE CVaRModel2 Maximizing Obj using LP;
         display x_new.l, CVaR.l, ExpectedReturn.l, CVaRLim, x_s.l, x_b.l;

         ExpectedReturnRes(p)    =  ExpectedReturn.l;
         x_oldRes(p,i)           =  x_new.l(i);
         CVaRRes(p)              =  CVaR.l/sum(i,x_old(i))

);

SummaryReportAll("BestCase", p)                  = BestCase(p);
SummaryReportAll("ExpectedReturn", p)            = ExpectedReturnRes(p);
SummaryReportAll("WorstCase", p)                 = WorstCase(p);
SummaryReportAll("CVaR", p)                      = CVaRRes(p);
SummaryReportAll("Vaule of the portfolio", p)    = sum(i, x_oldRes(p, i));
SummaryReport2("Portfolio", p, i)                = x_oldRes(p,i);

EXECUTE_UNLOAD 'ETFPortfolio_ResultsMinCVaR_Rolling.gdx', SummaryReportAll;
EXECUTE 'gdxxrw.exe ETFPortfolio_ResultsMinCVaR_Rolling.gdx O=ETFPortfolio_1overNbenchmark.xls par=SummaryReportAll rng=MinCVaR!a1' ;

EXECUTE_UNLOAD 'ETFPortfolio_CompositionMinCVaR_Rolling.gdx', SummaryReport2;
EXECUTE 'gdxxrw.exe ETFPortfolio_CompositionMinCVaR_Rolling.gdx O=ETFPortfolio_1overNbenchmark.xls par=SummaryReport2 rng=Comp_MinCVaR!a1' ;
$offtext


//////////////////////////////////////////////////
// MAXIMIZING EXPECTED RETURNS ///////////////////
//////////////////////////////////////////////////

//TO MODIFY
lambda = 0;                              //Lambda
alpha = 0.95;                            //Alpha
rebalanceAfter = 1;                      //After 12 months rebalance the portfolio

//CONSTANTS
loopConst = 0;
rebalancingNum = 1;
ExpRetLim = -Budget*10;

// THE FIRST PERIOD
SOLVE CVaRModel Maximizing Obj using LP;
display x_new.l, CVaR.l, ExpectedReturn.l, CVaRLim;
//CVaR and COMPOSITION AFTER FIRST INVESTING PERIOD
CVaRRes("p0") = CVaR.l/100000;
x_oldRes("p0",i) = x_new.l(i);
Cash.l = 0;
CashRes("p0") = Cash.l;


//REBALANCING AFTER THE FIRST PERIOD
loop(p$(ord(p)>1),
         //Saving results from the first period model to the Parameter + modification by returns to
         //be used in the second period

    loopConst = loopConst + 1
    //IN CASE WE ARE IN THE REBALANCING PERIOD
    If(loopConst = rebalancingNum*rebalanceAfter,
         rebalancingNum = rebalancingNum + 1;

         x_old(i) = x_new.l(i)*(1+ReturnsMonth(p, i));           //Add transaction cost c
         Cash_old =  Cash.l;
         Display x_old, Cash.l;

         BestCase(p) = Smax(s,sum(i,R(i,s)*x_old(i)));
         WorstCase(p) = Smin(s,sum(i,R(i,s)*x_old(i)));

         R(i,s) = 1 + ScenarioReturnP(i,s,p);
         EP(i) = SUM(s, pr(s) * R(i,s));

         //New Targets for the second period
         CVaRLim = CVaRp(p)*sum(i, x_old(i));         //Target p2 form the gdx file
         //ExpRetLim = ERP(p+1)*sum(i, x_old(i));     //Target p2 form the gdx file
         Display CVaRLim;


         //Max Expected returns
         SOLVE CVaRModel2 Maximizing Obj using LP;
         display x_new.l, CVaR.l, ExpectedReturn.l, CVaRLim, x_s.l, x_b.l, Cash.l, decreaseCash.l;


         ExpectedReturnRes(p)    =  ExpectedReturn.l;
         x_oldRes(p,i)           =  x_new.l(i);
         CVaRRes(p)              =  CVaR.l/sum(i,x_old(i));
         CashRes(p)              =  Cash.l;
    Else
         x_new.l(i) = x_new.l(i)*(1+ReturnsMonth(p, i));           //Add transaction cost c
         Display x_new.l;

         BestCase(p) = Smax(s,sum(i,R(i,s)*x_new.l(i)));
         WorstCase(p) = Smin(s,sum(i,R(i,s)*x_new.l(i)));

         ExpectedReturnRes(p)    =  ExpectedReturn.l;
         x_oldRes(p,i)           =  x_new.l(i);
         CVaRRes(p)              =  CVaR.l/sum(i,x_new.l(i));
         CashRes(p)              =  Cash.l;
    );

);


//SAVING OUR RESULTS
SummaryReportAll("Cash in hand", p)              = CashRes(p);
SummaryReportAll("BestCase", p)                  = BestCase(p);
SummaryReportAll("ExpectedReturn", p)            = ExpectedReturnRes(p);
SummaryReportAll("WorstCase", p)                 = WorstCase(p);
SummaryReportAll("CVaR", p)                      = CVaRRes(p);
SummaryReportAll("Vaule of the portfolio", p)    = sum(i, x_oldRes(p, i));
SummaryReport2("Portfolio", p, i)                = x_oldRes(p,i)/(1-c);

//EXPORT RESULTS INTO EXCEL FILE
//VALUE OF THE PORTFOLIO AND CVaR IN EACH TIME PERIOD
EXECUTE_UNLOAD 'ETFPortfolio_MC_UPdate.gdx', SummaryReportAll;
EXECUTE 'gdxxrw.exe ETFPortfolio_MC_UPdate.gdx O=1Results.xlsx par=SummaryReportAll rng=MC!a1' ;

//COMPOSITION OF THE PORTFOLIO IN EACH PERIOD
EXECUTE_UNLOAD 'ETFPortfolio_MC_UPdateComp.gdx', SummaryReport2;
EXECUTE 'gdxxrw.exe ETFPortfolio_MC_UPdateComp.gdx O=1Results.xlsx par=SummaryReport2 rng=MCcomp!a1' ;





























