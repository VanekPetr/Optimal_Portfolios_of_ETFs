$TITLE Equal Weight Portfolio
* Creates 1/N portfolio

$eolcom //
option optcr=0.0001;

SETS
         Date      'Dates'
         Asset     'Assets'
         Periods   'Amount of 4-week intervals'
         Scenarios 'Scenarios'
;
ALIAS(Date,t);
ALIAS(Asset,i);
ALIAS(Periods,p);
ALIAS(Scenarios,s);

$onMulti

PARAMETER
         ScenarioReturnP(i,s,p) 'Return of index i, at date t, in scenario interval p'
         ReturnsMonth(p,i) 'Return of index i in the ord(p)th month from August 2005 to April 2019'
;

*Loading asset,periods, scenarios and scenario returns data from "RollingScenarios.gdx"
$GDXIN RollingScenarios
$LOAD  Asset Scenarios Periods ScenarioReturnP
$GDXIN

DISPLAY  Asset, Scenarios, Periods, ScenarioReturnP;

*Loading the actual monthly returns from August 2016 to May 2020
$GDXIN ReturnMonthly
$LOAD  ReturnsMonth
$GDXIN

SCALARS
        Budget        'Nominal investment budget'
        alpha         'Confidence level'
        Lambda        'Risk aversion parameter'
        CVaRLim       'CVaR limit'
        ExpRetLim     'Expected Return Limit'
;

// DEFINE BUDGET AND ALPHA
Budget = 99900.0;
alpha  = 0.95;

PARAMETERS
        pr(s)       'Scenario probability'
        Rp(i,s,p)   'Final values "R_is" for ord(p)th rolling'
        EPp(i,p)    'Expected final values "mu_i" for ord(p)th rolling'
        R(i,s)      'Auxiliary parameter for final values'
        EP(i)       'Auxiliary parameter for Expected final values'
;

// DEFINITIONS
pr(s) = 1.0 / CARD(s);

Rp(i,s,p) = 1 + ScenarioReturnP(i,s,p);

EPp(i,p) = SUM(s, pr(s) * Rp(i,s,p));


PARAMETER x_old(i);


POSITIVE VARIABLES
         x(i)            'Holdings of assets in proportions'
         VaRDev(s)       'Measures of the deviation'
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
         ObjectivFunc     'Lambda formulation of the MeanCVaR model'
;





*--s.t.-----------
BudgetCon ..              sum(i, x(i)) =E= Budget;

ReturnCon ..              ExpectedReturn =E= sum(i, EP(i)*x(i));

LossDefCon(s) ..          Losses(s) =E= -1*sum(i, R(i, s)*x(i) );

VaRDevCon(s) ..           VaRDev(s) =G= Losses(s) - VaR;

CVaRDefCon ..              CVaR =E= VaR + (sum(s, pr(s)*VarDev(s) ) )/(1 - alpha);

*--Objective------
ObjectivFunc ..            Obj =E= (1-lambda)*ExpectedReturn - lambda*CVaR;




*--Model-----------
MODEL CVaRModel 'The Conditional Value-at-Risk Model' /BudgetCon, ReturnCon, LossDefCon, VaRDevCon, CVaRDefCon/;

*------------CVaR----------------------
PARAMETERS
         ExpectedReturnp(p)    'Expected return for ord(p)th rolling'
         CVaRp(p)              'Conditional-Value-at-risk for ord(p)th rolling'
         RunningBudget(p)      '1/N portfolio performance'
         WC(p)
         BC(p)
;

// THE FIRST PERIOD
X.fx(i) = Budget/card(i);
display X.l;
R(i,s) = Rp(i,s,"p0");
EP(i) = SUM(s, pr(s) * R(i,s));
SOLVE CVaRModel Minimazing CVaR using LP;
ExpectedReturnp("p0") = (ExpectedReturn.l-180*20)/99940-1;
CVaRp("p0") = CVaR.l/99940;
RunningBudget("p0")=99940;
BC('p0')=SUM(i,SMAX(s, R(i,s) )*x.l(i));
WC('p0')=SUM(i,SMIN(s, R(i,s) )*x.l(i));
display x.l;

// REBALANCING
LOOP(p$(ord(p)>1),
     R(i,s) = Rp(i,s,p);
     EP(i) = SUM(s, pr(s) * R(i,s));
     x_old(i)=x.l(i)*(1+ReturnsMonth(p,i));
     Budget=sum(i,x_old(i));
     RunningBudget(p)=Budget;
     x.fx(i)=x_old(i);
     SOLVE CVaRModel MINIMIZING CVaR using LP;
     CVaRModel.SOLPRINT = 2;
     ExpectedReturnp(p) = (ExpectedReturn.l/sum(i,x.l(i)))-1;
     CVaRp(p) = CVaR.l/sum(i, x.l(i));
     BC(p)=SUM(i,SMAX(s, R(i,s) )*x.l(i));
     WC(p)=SUM(i,SMIN(s, R(i,s) )*x.l(i));
);


parameter SummaryReport(*,*);

* Store results by rows
SummaryReport('ExpectedReturn',p) = ExpectedReturnp(p);
SummaryReport('CVaR',p) = CVaRp(p);
SummaryReport('EqualWeightPortfolio',p)= RunningBudget(p);
SummaryReport('BC',p) = BC(p);
SummaryReport('WC',p) = WC(p);

display SummaryReport

EXECUTE_UNLOAD 'EQPortfolio_Results.gdx' SummaryReport;
EXECUTE 'gdxxrw.exe EQPortfolio_Results.gdx O=1Results.xlsx par=SummaryReport rng=1overN!a1';

