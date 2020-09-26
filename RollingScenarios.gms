*****Scenario Generation by Bootstrapping*****

SETS
         Date            'Dates'
         Asset           'Assets'
         Periods         'Amount of 4-week intervals' /p0*p49/
         Weeks           'Weeks for bootstrapping' /w1*w4/
         Scenarios       'Scenarios for bootstrapping' /s1*s250/
;
ALIAS(Date,t);
ALIAS(Asset,i);
ALIAS(Periods,p);
ALIAS(Weeks,w);
ALIAS(Scenarios,s);


PARAMETER
         Return                          'Return of index i at date t.'
         ScenarioReturnPW(i, s, w, p)    'Return of index i, at date t, in week w, in scenariointerval p'
         ScenarioReturnP(i,s,p)          'Return of index i, at date t, in scenariointerval p'
;

SCALARS
         RandomNumber    'A random number for bootstrapping';

*Loading date, asset and ETF returns data from "out-ETFRet.gdx"
$GDXIN out-ETFRet
$LOAD  Date,Asset,Return
$GDXIN

*Setting for generating random numbers
execseed = gmillisec(jnow);

*Generating 250 scenarios in 49 period-intervals.
LOOP(p,
         LOOP(s,
                 LOOP(w,
                         RandomNumber = uniformint(1+4*ORD(p)-4,97+4*ORD(p)-4);
                         ScenarioReturnPW(i,s,w,p) = SUM(t$(ORD(t)=RandomNumber), Return(t,i) );
                  );
                  ScenarioReturnP(i,s,p) = PROD(W, (1+ScenarioReturnPW(i,s,w,p)))-1;
         );
);


DISPLAY ScenarioReturnP;


*Export to GDX-file
EXECUTE_UNLOAD 'RollingScenarios150.gdx' ScenarioReturnP, Asset, Scenarios, Periods;








