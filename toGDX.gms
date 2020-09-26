* Loads data from .xlsx to .gdx file   
Set
    Date Dates
    Asset Assets;

$onecho > tasks.txt
dset=Date rng=a1 rdim=1
dset=Asset rng=a1:TR1 cdim=1
par=Return rng=out-ETFRet!A1 rdim=1 cdim=1
$offecho

PARAMETER
         Return(Date,Asset)
;

$call gdxxrw out-ETFRet.xlsx trace=3 @tasks.txt
$GDXIN out-ETFRet.gdx
$LOAD  Date, Asset
$LOAD  Return
$GDXIN

Display Date, Asset, Return
