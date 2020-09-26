$TITLE Final project
* Compounds 4-week period returns

$eolcom //
option optcr=0.0001;

SETS
         Date      'Dates'
         Asset     'Assets'
         p         /p1*p49/    //49 4-week periods for out-of-sample testing
         Scenarios 'Scenarios'

;
ALIAS(Date,t);
ALIAS(Asset,i);

PARAMETER
         Return(t,i)           'historical return weekly'
         ReturnsMonth(p,i)     'historical return monthly'
;

// LOAD DATA FILE
$GDXIN out-ETFRet
$LOAD Asset, Date, Return
$GDXIN

DISPLAY t, i, Return;

* Turn historical returns into 4-weeks period
loop(p,
   loop(t$(ord(t) le 4*ord(p)+ 97 and ord(t) gt 4*(ord(p)-1)+97),
     if (ord(t) eq 4*ord(p)-3+97,
        ReturnsMonth(p, i) = 1 + Return(t,i);
     else
       ReturnsMonth(p, i) = (1 + Return(t,i))*ReturnsMonth(p, i);
     );
  );
  ReturnsMonth(p, i) = ReturnsMonth(p, i)-1;
);

display ReturnsMonth   // monthly historical returns for the backtesting

EXECUTE_UNLOAD 'ReturnMonthly.gdx', ReturnsMonth;
*EXECUTE 'gdxxrw.exe ReturnsMonthly.gdx O=ReturnsMonthly.xls par=ReturnsMonth rng=sheet1!a1' ;

