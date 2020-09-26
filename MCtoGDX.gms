* Loads results from Monte Carlo simulation to .gdx file

*Define the sets
set Periods    /p1*p49/
    Scenarios  /s1*s250/
    Asset
;

*Load ETF names
$GDXIN RollingScenarios70
$LOAD  Asset
$GDXIN

ALIAS(Scenarios, s);
ALIAS(Periods, p);
ALIAS(Asset, i);

PARAMETERS
ScenarioReturnP(i,s,p)
ETF1(p, s)
ETF2(p, s)
ETF3(p, s)
ETF4(p, s)
ETF5(p, s)
ETF6(p, s)
ETF7(p, s)
ETF8(p, s)
ETF9(p, s)
ETF10(p, s)
ETF11(p, s)
ETF12(p, s)
ETF13(p, s)
ETF14(p, s)
ETF15(p, s)
ETF16(p, s)
ETF17(p, s)
ETF18(p, s)
ETF19(p, s)
ETF20(p, s)
ETF21(p, s)
ETF22(p, s)
ETF23(p, s)
ETF24(p, s)
ETF25(p, s)
ETF26(p, s)
ETF27(p, s)
ETF28(p, s)
ETF29(p, s)
ETF30(p, s)
ETF31(p, s)
ETF32(p, s)
ETF33(p, s)
ETF34(p, s)
ETF35(p, s)
ETF36(p, s)
ETF37(p, s)
ETF38(p, s)
ETF39(p, s)
ETF40(p, s)
ETF41(p, s)
ETF42(p, s)
ETF43(p, s)
ETF44(p, s)
ETF45(p, s)
ETF46(p, s)
ETF47(p, s)
ETF48(p, s)
ETF49(p, s)
ETF50(p, s)
ETF51(p, s)
ETF52(p, s)
ETF53(p, s)
ETF54(p, s)
ETF55(p, s)
ETF56(p, s)
ETF57(p, s)
ETF58(p, s)
ETF59(p, s)
ETF60(p, s)
ETF61(p, s)
ETF62(p, s)
ETF63(p, s)
ETF64(p, s)
ETF65(p, s)
ETF66(p, s)
ETF67(p, s)
ETF68(p, s)
ETF69(p, s)
ETF70(p, s)
ETF71(p, s)
ETF72(p, s)
ETF73(p, s)
ETF74(p, s)
ETF75(p, s)
ETF76(p, s)
ETF77(p, s)
ETF78(p, s)
ETF79(p, s)
ETF80(p, s)
ETF81(p, s)
ETF82(p, s)
ETF83(p, s)
ETF84(p, s)
ETF85(p, s)
ETF86(p, s)
ETF87(p, s)
ETF88(p, s)
ETF89(p, s)
ETF90(p, s)
ETF91(p, s)
ETF92(p, s)
ETF93(p, s)
ETF94(p, s)
ETF95(p, s)
ETF96(p, s)
ETF97(p, s)
ETF98(p, s)
ETF99(p, s)
ETF100(p, s)
ETF101(p, s)
ETF102(p, s)
ETF103(p, s)
ETF104(p, s)
ETF105(p, s)
ETF106(p, s)
ETF107(p, s)
ETF108(p, s)
ETF109(p, s)
ETF110(p, s)
ETF111(p, s)
ETF112(p, s)
ETF113(p, s)
ETF114(p, s)
ETF115(p, s)
ETF116(p, s)
ETF117(p, s)
ETF118(p, s)
ETF119(p, s)
ETF120(p, s)
ETF121(p, s)
ETF122(p, s)
ETF123(p, s)
ETF124(p, s)
ETF125(p, s)
ETF126(p, s)
ETF127(p, s)
ETF128(p, s)
ETF129(p, s)
ETF130(p, s)
ETF131(p, s)
ETF132(p, s)
ETF133(p, s)
ETF134(p, s)
ETF135(p, s)
ETF136(p, s)
ETF137(p, s)
ETF138(p, s)
ETF139(p, s)
ETF140(p, s)
ETF141(p, s)
ETF142(p, s)
ETF143(p, s)
ETF144(p, s)
ETF145(p, s)
ETF146(p, s)
ETF147(p, s)
ETF148(p, s)
ETF149(p, s)
ETF150(p, s)
ETF151(p, s)
ETF152(p, s)
ETF153(p, s)
ETF154(p, s)
ETF155(p, s)
ETF156(p, s)
ETF157(p, s)
ETF158(p, s)
ETF159(p, s)
ETF160(p, s)
ETF161(p, s)
ETF162(p, s)
ETF163(p, s)
ETF164(p, s)
ETF165(p, s)
ETF166(p, s)
ETF167(p, s)
ETF168(p, s)
ETF169(p, s)
ETF170(p, s)
ETF171(p, s)
ETF172(p, s)
ETF173(p, s)
ETF174(p, s)
ETF175(p, s)
ETF176(p, s)
ETF177(p, s)
ETF178(p, s)
ETF179(p, s)
ETF180(p, s)
ETF181(p, s)
ETF182(p, s)
ETF183(p, s)
ETF184(p, s)
ETF185(p, s)
ETF186(p, s)
ETF187(p, s)
ETF188(p, s)
ETF189(p, s)
ETF190(p, s)
ETF191(p, s)
ETF192(p, s)
ETF193(p, s)
ETF194(p, s)
ETF195(p, s)
ETF196(p, s)
ETF197(p, s)
ETF198(p, s)
ETF199(p, s)
ETF200(p, s)
ETF201(p, s)
ETF202(p, s)
ETF203(p, s)
ETF204(p, s)
ETF205(p, s)
ETF206(p, s)
ETF207(p, s)
ETF208(p, s)
ETF209(p, s)
ETF210(p, s)
ETF211(p, s)
ETF212(p, s)
ETF213(p, s)
ETF214(p, s)
ETF215(p, s)
ETF216(p, s)
ETF217(p, s)
ETF218(p, s)
ETF219(p, s)
ETF220(p, s)
ETF221(p, s)
ETF222(p, s)
ETF223(p, s)
ETF224(p, s)
ETF225(p, s)
ETF226(p, s)
ETF227(p, s)
ETF228(p, s)
ETF229(p, s)
ETF230(p, s)
ETF231(p, s)
ETF232(p, s)
ETF233(p, s)
ETF234(p, s)
ETF235(p, s)
ETF236(p, s)
ETF237(p, s)
ETF238(p, s)
ETF239(p, s)
ETF240(p, s)
ETF241(p, s)
ETF242(p, s)
ETF243(p, s)
ETF244(p, s)
ETF245(p, s)
ETF246(p, s)
ETF247(p, s)
ETF248(p, s)
ETF249(p, s)
ETF250(p, s)
ETF251(p, s)
ETF252(p, s)
ETF253(p, s)
ETF254(p, s)
ETF255(p, s)
ETF256(p, s)
ETF257(p, s)
ETF258(p, s)
ETF259(p, s)
ETF260(p, s)
ETF261(p, s)
ETF262(p, s)
ETF263(p, s)
ETF264(p, s)
ETF265(p, s)
ETF266(p, s)
ETF267(p, s)
ETF268(p, s)
ETF269(p, s)
ETF270(p, s)
ETF271(p, s)
ETF272(p, s)
ETF273(p, s)
ETF274(p, s)
ETF275(p, s)
ETF276(p, s)
ETF277(p, s)
ETF278(p, s)
ETF279(p, s)
ETF280(p, s)
ETF281(p, s)
ETF282(p, s)
ETF283(p, s)
ETF284(p, s)
ETF285(p, s)
ETF286(p, s)
ETF287(p, s)
ETF288(p, s)
ETF289(p, s)
ETF290(p, s)
ETF291(p, s)
ETF292(p, s)
ETF293(p, s)
ETF294(p, s)
ETF295(p, s)
ETF296(p, s)
ETF297(p, s)
ETF298(p, s)
ETF299(p, s)
ETF300(p, s)
ETF301(p, s)
ETF302(p, s)
ETF303(p, s)
ETF304(p, s)
ETF305(p, s)
ETF306(p, s)
ETF307(p, s)
ETF308(p, s)
ETF309(p, s)
ETF310(p, s)
ETF311(p, s)
ETF312(p, s)
ETF313(p, s)
ETF314(p, s)
ETF315(p, s)
ETF316(p, s)
ETF317(p, s)
ETF318(p, s)
ETF319(p, s)
ETF320(p, s)
ETF321(p, s)
ETF322(p, s)
ETF323(p, s)
ETF324(p, s)
ETF325(p, s)
ETF326(p, s)
ETF327(p, s)
ETF328(p, s)
ETF329(p, s)
ETF330(p, s)
ETF331(p, s)
ETF332(p, s)
ETF333(p, s)
ETF334(p, s)
ETF335(p, s)
ETF336(p, s)
ETF337(p, s)
ETF338(p, s)
ETF339(p, s)
ETF340(p, s)
ETF341(p, s)
ETF342(p, s)
ETF343(p, s)
ETF344(p, s)
ETF345(p, s)
ETF346(p, s)
ETF347(p, s)
ETF348(p, s)
ETF349(p, s)
ETF350(p, s)
ETF351(p, s)
ETF352(p, s)
ETF353(p, s)
ETF354(p, s)
ETF355(p, s)
ETF356(p, s)
ETF357(p, s)
ETF358(p, s)
ETF359(p, s)
ETF360(p, s)
ETF361(p, s)
ETF362(p, s)
ETF363(p, s)
ETF364(p, s)
ETF365(p, s)
ETF366(p, s)
ETF367(p, s)
ETF368(p, s)
ETF369(p, s)
ETF370(p, s)
ETF371(p, s)
ETF372(p, s)
ETF373(p, s)
ETF374(p, s)
ETF375(p, s)
ETF376(p, s)
ETF377(p, s)
ETF378(p, s)
ETF379(p, s)
ETF380(p, s)
ETF381(p, s)
ETF382(p, s)
ETF383(p, s)
ETF384(p, s)
ETF385(p, s)
ETF386(p, s)
ETF387(p, s)
ETF388(p, s)
ETF389(p, s)
ETF390(p, s)
ETF391(p, s)
ETF392(p, s)
ETF393(p, s)
ETF394(p, s)
ETF395(p, s)
ETF396(p, s)
ETF397(p, s)
ETF398(p, s)
ETF399(p, s)
ETF400(p, s)
ETF401(p, s)
ETF402(p, s)
ETF403(p, s)
ETF404(p, s)
ETF405(p, s)
ETF406(p, s)
ETF407(p, s)
ETF408(p, s)
ETF409(p, s)
ETF410(p, s)
ETF411(p, s)
ETF412(p, s)
ETF413(p, s)
ETF414(p, s)
ETF415(p, s)
ETF416(p, s)
ETF417(p, s)
ETF418(p, s)
ETF419(p, s)
ETF420(p, s)
ETF421(p, s)
ETF422(p, s)
ETF423(p, s)
ETF424(p, s)
ETF425(p, s)
ETF426(p, s)
ETF427(p, s)
ETF428(p, s)
ETF429(p, s)
ETF430(p, s)
ETF431(p, s)
ETF432(p, s)
ETF433(p, s)
ETF434(p, s)
ETF435(p, s)
ETF436(p, s)
ETF437(p, s)
ETF438(p, s)
ETF439(p, s)
ETF440(p, s)
ETF441(p, s)
ETF442(p, s)
ETF443(p, s)
ETF444(p, s)
ETF445(p, s)
ETF446(p, s)
ETF447(p, s)
ETF448(p, s)
ETF449(p, s)
ETF450(p, s)
ETF451(p, s)
ETF452(p, s)
ETF453(p, s)
ETF454(p, s)
ETF455(p, s)
ETF456(p, s)
ETF457(p, s)
ETF458(p, s)
ETF459(p, s)
ETF460(p, s)
ETF461(p, s)
ETF462(p, s)
ETF463(p, s)
ETF464(p, s)
ETF465(p, s)
ETF466(p, s)
ETF467(p, s)
ETF468(p, s)
ETF469(p, s)
ETF470(p, s)
ETF471(p, s)
ETF472(p, s)
ETF473(p, s)
ETF474(p, s)
ETF475(p, s)
ETF476(p, s)
ETF477(p, s)
ETF478(p, s)
ETF479(p, s)
ETF480(p, s)
ETF481(p, s)
ETF482(p, s)
ETF483(p, s)
ETF484(p, s)
ETF485(p, s)
ETF486(p, s)
ETF487(p, s)
ETF488(p, s)
ETF489(p, s)
ETF490(p, s)
ETF491(p, s)
ETF492(p, s)
ETF493(p, s)
ETF494(p, s)
ETF495(p, s)
ETF496(p, s)
ETF497(p, s)
ETF498(p, s)
ETF499(p, s)
ETF500(p, s)
ETF501(p, s)
ETF502(p, s)
ETF503(p, s)
ETF504(p, s)
ETF505(p, s)
ETF506(p, s)
ETF507(p, s)
ETF508(p, s)
ETF509(p, s)
ETF510(p, s)
ETF511(p, s)
ETF512(p, s)
ETF513(p, s)
ETF514(p, s)
ETF515(p, s)
ETF516(p, s)
ETF517(p, s)
ETF518(p, s)
ETF519(p, s)
ETF520(p, s)
ETF521(p, s)
ETF522(p, s)
ETF523(p, s)
ETF524(p, s)
ETF525(p, s)
ETF526(p, s)
ETF527(p, s)
ETF528(p, s)
ETF529(p, s)
ETF530(p, s)
ETF531(p, s)
ETF532(p, s)
ETF533(p, s)
ETF534(p, s)
ETF535(p, s)
ETF536(p, s)
ETF537(p, s)
;

$onecho > tasks.txt
dset=Periods rng=a1 rdim=1
dset=Scenarios rng=a1:bs50 cdim=1
par=ETF1 rng=ANGL!a1:bs50 rdim=1 cdim=1
par=ETF2 rng=AOA!a1:bs50 rdim=1 cdim=1
par=ETF3 rng=AOK!a1:bs50 rdim=1 cdim=1
par=ETF4 rng=AOM!a1:bs50 rdim=1 cdim=1
par=ETF5 rng=AOR!a1:bs50 rdim=1 cdim=1
par=ETF6 rng=ASHR!a1:bs50 rdim=1 cdim=1
par=ETF7 rng=BAB!a1:bs50 rdim=1 cdim=1
par=ETF8 rng=BBH!a1:bs50 rdim=1 cdim=1
par=ETF9 rng=BIL!a1:bs50 rdim=1 cdim=1
par=ETF10 rng=BIV!a1:bs50 rdim=1 cdim=1
par=ETF11 rng=BKLN!a1:bs50 rdim=1 cdim=1
par=ETF12 rng=BLV!a1:bs50 rdim=1 cdim=1
par=ETF13 rng=BND!a1:bs50 rdim=1 cdim=1
par=ETF14 rng=BNDX!a1:bs50 rdim=1 cdim=1
par=ETF15 rng=BOND!a1:bs50 rdim=1 cdim=1
par=ETF16 rng=BRF!a1:bs50 rdim=1 cdim=1
par=ETF17 rng=BSCK!a1:bs50 rdim=1 cdim=1
par=ETF18 rng=BSCL!a1:bs50 rdim=1 cdim=1
par=ETF19 rng=BSCM!a1:bs50 rdim=1 cdim=1
par=ETF20 rng=BSJK!a1:bs50 rdim=1 cdim=1
par=ETF21 rng=BSV!a1:bs50 rdim=1 cdim=1
par=ETF22 rng=BWX!a1:bs50 rdim=1 cdim=1
par=ETF23 rng=CDC!a1:bs50 rdim=1 cdim=1
par=ETF24 rng=CGW!a1:bs50 rdim=1 cdim=1
par=ETF25 rng=CMBS!a1:bs50 rdim=1 cdim=1
par=ETF26 rng=CMF!a1:bs50 rdim=1 cdim=1
par=ETF27 rng=CORP!a1:bs50 rdim=1 cdim=1
par=ETF28 rng=CSM!a1:bs50 rdim=1 cdim=1
par=ETF29 rng=CWB!a1:bs50 rdim=1 cdim=1
par=ETF30 rng=CWI!a1:bs50 rdim=1 cdim=1
par=ETF31 rng=DBA!a1:bs50 rdim=1 cdim=1
par=ETF32 rng=DBB!a1:bs50 rdim=1 cdim=1
par=ETF33 rng=DBC!a1:bs50 rdim=1 cdim=1
par=ETF34 rng=DBE!a1:bs50 rdim=1 cdim=1
par=ETF35 rng=DBEF!a1:bs50 rdim=1 cdim=1
par=ETF36 rng=DBEU!a1:bs50 rdim=1 cdim=1
par=ETF37 rng=DBJP!a1:bs50 rdim=1 cdim=1
par=ETF38 rng=DBO!a1:bs50 rdim=1 cdim=1
par=ETF39 rng=DBP!a1:bs50 rdim=1 cdim=1
par=ETF40 rng=DBS!a1:bs50 rdim=1 cdim=1
par=ETF41 rng=DBV!a1:bs50 rdim=1 cdim=1
par=ETF42 rng=DEM!a1:bs50 rdim=1 cdim=1
par=ETF43 rng=DES!a1:bs50 rdim=1 cdim=1
par=ETF44 rng=DFE!a1:bs50 rdim=1 cdim=1
par=ETF45 rng=DFJ!a1:bs50 rdim=1 cdim=1
par=ETF46 rng=DGL!a1:bs50 rdim=1 cdim=1
par=ETF47 rng=DGRO!a1:bs50 rdim=1 cdim=1
par=ETF48 rng=DGRW!a1:bs50 rdim=1 cdim=1
par=ETF49 rng=DGS!a1:bs50 rdim=1 cdim=1
par=ETF50 rng=DHS!a1:bs50 rdim=1 cdim=1
par=ETF51 rng=DIA!a1:bs50 rdim=1 cdim=1
par=ETF52 rng=DIV!a1:bs50 rdim=1 cdim=1
par=ETF53 rng=DJP!a1:bs50 rdim=1 cdim=1
par=ETF54 rng=DLN!a1:bs50 rdim=1 cdim=1
par=ETF55 rng=DLS!a1:bs50 rdim=1 cdim=1
par=ETF56 rng=DOL!a1:bs50 rdim=1 cdim=1
par=ETF57 rng=DON!a1:bs50 rdim=1 cdim=1
par=ETF58 rng=DSI!a1:bs50 rdim=1 cdim=1
par=ETF59 rng=DTD!a1:bs50 rdim=1 cdim=1
par=ETF60 rng=DTN!a1:bs50 rdim=1 cdim=1
par=ETF61 rng=DVY!a1:bs50 rdim=1 cdim=1
par=ETF62 rng=DVYA!a1:bs50 rdim=1 cdim=1
par=ETF63 rng=DVYE!a1:bs50 rdim=1 cdim=1
par=ETF64 rng=DWM!a1:bs50 rdim=1 cdim=1
par=ETF65 rng=DWX!a1:bs50 rdim=1 cdim=1
par=ETF66 rng=DXGE!a1:bs50 rdim=1 cdim=1
par=ETF67 rng=DXJ!a1:bs50 rdim=1 cdim=1
par=ETF68 rng=EBND!a1:bs50 rdim=1 cdim=1
par=ETF69 rng=ECH!a1:bs50 rdim=1 cdim=1
par=ETF70 rng=EDEN!a1:bs50 rdim=1 cdim=1
par=ETF71 rng=EDIV!a1:bs50 rdim=1 cdim=1
par=ETF72 rng=EDV!a1:bs50 rdim=1 cdim=1
par=ETF73 rng=EELV!a1:bs50 rdim=1 cdim=1
par=ETF74 rng=EEM!a1:bs50 rdim=1 cdim=1
par=ETF75 rng=EEMA!a1:bs50 rdim=1 cdim=1
par=ETF76 rng=EEMS!a1:bs50 rdim=1 cdim=1
par=ETF77 rng=EEMV!a1:bs50 rdim=1 cdim=1
par=ETF78 rng=EFA!a1:bs50 rdim=1 cdim=1
par=ETF79 rng=EFAV!a1:bs50 rdim=1 cdim=1
par=ETF80 rng=EFG!a1:bs50 rdim=1 cdim=1
par=ETF81 rng=EFV!a1:bs50 rdim=1 cdim=1
par=ETF82 rng=EIDO!a1:bs50 rdim=1 cdim=1
par=ETF83 rng=EIRL!a1:bs50 rdim=1 cdim=1
par=ETF84 rng=ELD!a1:bs50 rdim=1 cdim=1
par=ETF85 rng=EMB!a1:bs50 rdim=1 cdim=1
par=ETF86 rng=EMHY!a1:bs50 rdim=1 cdim=1
par=ETF87 rng=EMLC!a1:bs50 rdim=1 cdim=1
par=ETF88 rng=ENZL!a1:bs50 rdim=1 cdim=1
par=ETF89 rng=EPHE!a1:bs50 rdim=1 cdim=1
par=ETF90 rng=EPOL!a1:bs50 rdim=1 cdim=1
par=ETF91 rng=EPP!a1:bs50 rdim=1 cdim=1
par=ETF92 rng=EPU!a1:bs50 rdim=1 cdim=1
par=ETF93 rng=EUFN!a1:bs50 rdim=1 cdim=1
par=ETF94 rng=EWA!a1:bs50 rdim=1 cdim=1
par=ETF95 rng=EWC!a1:bs50 rdim=1 cdim=1
par=ETF96 rng=EWD!a1:bs50 rdim=1 cdim=1
par=ETF97 rng=EWG!a1:bs50 rdim=1 cdim=1
par=ETF98 rng=EWH!a1:bs50 rdim=1 cdim=1
par=ETF99 rng=EWI!a1:bs50 rdim=1 cdim=1
par=ETF100 rng=EWJ!a1:bs50 rdim=1 cdim=1
par=ETF101 rng=EWK!a1:bs50 rdim=1 cdim=1
par=ETF102 rng=EWL!a1:bs50 rdim=1 cdim=1
par=ETF103 rng=EWM!a1:bs50 rdim=1 cdim=1
par=ETF104 rng=EWN!a1:bs50 rdim=1 cdim=1
par=ETF105 rng=EWP!a1:bs50 rdim=1 cdim=1
par=ETF106 rng=EWQ!a1:bs50 rdim=1 cdim=1
par=ETF107 rng=EWS!a1:bs50 rdim=1 cdim=1
par=ETF108 rng=EWT!a1:bs50 rdim=1 cdim=1
par=ETF109 rng=EWU!a1:bs50 rdim=1 cdim=1
par=ETF110 rng=EWW!a1:bs50 rdim=1 cdim=1
par=ETF111 rng=EWX!a1:bs50 rdim=1 cdim=1
par=ETF112 rng=EWY!a1:bs50 rdim=1 cdim=1
par=ETF113 rng=EWZ!a1:bs50 rdim=1 cdim=1
par=ETF114 rng=EZA!a1:bs50 rdim=1 cdim=1
par=ETF115 rng=EZM!a1:bs50 rdim=1 cdim=1
par=ETF116 rng=EZU!a1:bs50 rdim=1 cdim=1
par=ETF117 rng=FBT!a1:bs50 rdim=1 cdim=1
par=ETF118 rng=FCG!a1:bs50 rdim=1 cdim=1
par=ETF119 rng=FCOM!a1:bs50 rdim=1 cdim=1
par=ETF120 rng=FDD!a1:bs50 rdim=1 cdim=1
par=ETF121 rng=FDIS!a1:bs50 rdim=1 cdim=1
par=ETF122 rng=FDL!a1:bs50 rdim=1 cdim=1
par=ETF123 rng=FDN!a1:bs50 rdim=1 cdim=1
par=ETF124 rng=FENY!a1:bs50 rdim=1 cdim=1
par=ETF125 rng=FEU!a1:bs50 rdim=1 cdim=1
par=ETF126 rng=FEX!a1:bs50 rdim=1 cdim=1
par=ETF127 rng=FEZ!a1:bs50 rdim=1 cdim=1
par=ETF128 rng=FGD!a1:bs50 rdim=1 cdim=1
par=ETF129 rng=FHLC!a1:bs50 rdim=1 cdim=1
par=ETF130 rng=FIDU!a1:bs50 rdim=1 cdim=1
par=ETF131 rng=FLOT!a1:bs50 rdim=1 cdim=1
par=ETF132 rng=FLRN!a1:bs50 rdim=1 cdim=1
par=ETF133 rng=FMAT!a1:bs50 rdim=1 cdim=1
par=ETF134 rng=FNCL!a1:bs50 rdim=1 cdim=1
par=ETF135 rng=FNDA!a1:bs50 rdim=1 cdim=1
par=ETF136 rng=FNDC!a1:bs50 rdim=1 cdim=1
par=ETF137 rng=FNDE!a1:bs50 rdim=1 cdim=1
par=ETF138 rng=FNDF!a1:bs50 rdim=1 cdim=1
par=ETF139 rng=FNDX!a1:bs50 rdim=1 cdim=1
par=ETF140 rng=FNX!a1:bs50 rdim=1 cdim=1
par=ETF141 rng=FPX!a1:bs50 rdim=1 cdim=1
par=ETF142 rng=FRI!a1:bs50 rdim=1 cdim=1
par=ETF143 rng=FSTA!a1:bs50 rdim=1 cdim=1
par=ETF144 rng=FTA!a1:bs50 rdim=1 cdim=1
par=ETF145 rng=FTC!a1:bs50 rdim=1 cdim=1
par=ETF146 rng=FTCS!a1:bs50 rdim=1 cdim=1
par=ETF147 rng=FTEC!a1:bs50 rdim=1 cdim=1
par=ETF148 rng=FTSM!a1:bs50 rdim=1 cdim=1
par=ETF149 rng=FUTY!a1:bs50 rdim=1 cdim=1
par=ETF150 rng=FVD!a1:bs50 rdim=1 cdim=1
par=ETF151 rng=FXA!a1:bs50 rdim=1 cdim=1
par=ETF152 rng=FXB!a1:bs50 rdim=1 cdim=1
par=ETF153 rng=FXC!a1:bs50 rdim=1 cdim=1
par=ETF154 rng=FXD!a1:bs50 rdim=1 cdim=1
par=ETF155 rng=FXE!a1:bs50 rdim=1 cdim=1
par=ETF156 rng=FXF!a1:bs50 rdim=1 cdim=1
par=ETF157 rng=FXG!a1:bs50 rdim=1 cdim=1
par=ETF158 rng=FXH!a1:bs50 rdim=1 cdim=1
par=ETF159 rng=FXL!a1:bs50 rdim=1 cdim=1
par=ETF160 rng=FXN!a1:bs50 rdim=1 cdim=1
par=ETF161 rng=FXO!a1:bs50 rdim=1 cdim=1
par=ETF162 rng=FXR!a1:bs50 rdim=1 cdim=1
par=ETF163 rng=FXU!a1:bs50 rdim=1 cdim=1
par=ETF164 rng=FXY!a1:bs50 rdim=1 cdim=1
par=ETF165 rng=FXZ!a1:bs50 rdim=1 cdim=1
par=ETF166 rng=FYX!a1:bs50 rdim=1 cdim=1
par=ETF167 rng=GBF!a1:bs50 rdim=1 cdim=1
par=ETF168 rng=GDX!a1:bs50 rdim=1 cdim=1
par=ETF169 rng=GDXJ!a1:bs50 rdim=1 cdim=1
par=ETF170 rng=GLD!a1:bs50 rdim=1 cdim=1
par=ETF171 rng=GLTR!a1:bs50 rdim=1 cdim=1
par=ETF172 rng=GMF!a1:bs50 rdim=1 cdim=1
par=ETF173 rng=GNMA!a1:bs50 rdim=1 cdim=1
par=ETF174 rng=GNR!a1:bs50 rdim=1 cdim=1
par=ETF175 rng=GOVT!a1:bs50 rdim=1 cdim=1
par=ETF176 rng=GREK!a1:bs50 rdim=1 cdim=1
par=ETF177 rng=GSG!a1:bs50 rdim=1 cdim=1
par=ETF178 rng=GSY!a1:bs50 rdim=1 cdim=1
par=ETF179 rng=GUNR!a1:bs50 rdim=1 cdim=1
par=ETF180 rng=GVI!a1:bs50 rdim=1 cdim=1
par=ETF181 rng=GWX!a1:bs50 rdim=1 cdim=1
par=ETF182 rng=GXC!a1:bs50 rdim=1 cdim=1
par=ETF183 rng=HDV!a1:bs50 rdim=1 cdim=1
par=ETF184 rng=HEDJ!a1:bs50 rdim=1 cdim=1
par=ETF185 rng=HEFA!a1:bs50 rdim=1 cdim=1
par=ETF186 rng=HEWG!a1:bs50 rdim=1 cdim=1
par=ETF187 rng=HEWJ!a1:bs50 rdim=1 cdim=1
par=ETF188 rng=HEZU!a1:bs50 rdim=1 cdim=1
par=ETF189 rng=HYD!a1:bs50 rdim=1 cdim=1
par=ETF190 rng=HYEM!a1:bs50 rdim=1 cdim=1
par=ETF191 rng=HYG!a1:bs50 rdim=1 cdim=1
par=ETF192 rng=HYMB!a1:bs50 rdim=1 cdim=1
par=ETF193 rng=HYS!a1:bs50 rdim=1 cdim=1
par=ETF194 rng=IAI!a1:bs50 rdim=1 cdim=1
par=ETF195 rng=IAT!a1:bs50 rdim=1 cdim=1
par=ETF196 rng=IAU!a1:bs50 rdim=1 cdim=1
par=ETF197 rng=IBB!a1:bs50 rdim=1 cdim=1
par=ETF198 rng=IBND!a1:bs50 rdim=1 cdim=1
par=ETF199 rng=ICF!a1:bs50 rdim=1 cdim=1
par=ETF200 rng=IDLV!a1:bs50 rdim=1 cdim=1
par=ETF201 rng=IDU!a1:bs50 rdim=1 cdim=1
par=ETF202 rng=IDV!a1:bs50 rdim=1 cdim=1
par=ETF203 rng=IDX!a1:bs50 rdim=1 cdim=1
par=ETF204 rng=IEF!a1:bs50 rdim=1 cdim=1
par=ETF205 rng=IEFA!a1:bs50 rdim=1 cdim=1
par=ETF206 rng=IEI!a1:bs50 rdim=1 cdim=1
par=ETF207 rng=IEMG!a1:bs50 rdim=1 cdim=1
par=ETF208 rng=IEO!a1:bs50 rdim=1 cdim=1
par=ETF209 rng=IEUR!a1:bs50 rdim=1 cdim=1
par=ETF210 rng=IEV!a1:bs50 rdim=1 cdim=1
par=ETF211 rng=IEZ!a1:bs50 rdim=1 cdim=1
par=ETF212 rng=IFGL!a1:bs50 rdim=1 cdim=1
par=ETF213 rng=IGE!a1:bs50 rdim=1 cdim=1
par=ETF214 rng=IGF!a1:bs50 rdim=1 cdim=1
par=ETF215 rng=IGM!a1:bs50 rdim=1 cdim=1
par=ETF216 rng=IGN!a1:bs50 rdim=1 cdim=1
par=ETF217 rng=IGOV!a1:bs50 rdim=1 cdim=1
par=ETF218 rng=IGV!a1:bs50 rdim=1 cdim=1
par=ETF219 rng=IHDG!a1:bs50 rdim=1 cdim=1
par=ETF220 rng=IHE!a1:bs50 rdim=1 cdim=1
par=ETF221 rng=IHF!a1:bs50 rdim=1 cdim=1
par=ETF222 rng=IHI!a1:bs50 rdim=1 cdim=1
par=ETF223 rng=IJH!a1:bs50 rdim=1 cdim=1
par=ETF224 rng=IJJ!a1:bs50 rdim=1 cdim=1
par=ETF225 rng=IJK!a1:bs50 rdim=1 cdim=1
par=ETF226 rng=IJR!a1:bs50 rdim=1 cdim=1
par=ETF227 rng=IJS!a1:bs50 rdim=1 cdim=1
par=ETF228 rng=IJT!a1:bs50 rdim=1 cdim=1
par=ETF229 rng=ILF!a1:bs50 rdim=1 cdim=1
par=ETF230 rng=ILTB!a1:bs50 rdim=1 cdim=1
par=ETF231 rng=INDA!a1:bs50 rdim=1 cdim=1
par=ETF232 rng=IOO!a1:bs50 rdim=1 cdim=1
par=ETF233 rng=IPAC!a1:bs50 rdim=1 cdim=1
par=ETF234 rng=IPE!a1:bs50 rdim=1 cdim=1
par=ETF235 rng=IPFF!a1:bs50 rdim=1 cdim=1
par=ETF236 rng=IQDF!a1:bs50 rdim=1 cdim=1
par=ETF237 rng=ISTB!a1:bs50 rdim=1 cdim=1
par=ETF238 rng=ITA!a1:bs50 rdim=1 cdim=1
par=ETF239 rng=ITB!a1:bs50 rdim=1 cdim=1
par=ETF240 rng=ITE!a1:bs50 rdim=1 cdim=1
par=ETF241 rng=ITM!a1:bs50 rdim=1 cdim=1
par=ETF242 rng=ITOT!a1:bs50 rdim=1 cdim=1
par=ETF243 rng=IUSB!a1:bs50 rdim=1 cdim=1
par=ETF244 rng=IUSG!a1:bs50 rdim=1 cdim=1
par=ETF245 rng=IUSV!a1:bs50 rdim=1 cdim=1
par=ETF246 rng=IVE!a1:bs50 rdim=1 cdim=1
par=ETF247 rng=IVOG!a1:bs50 rdim=1 cdim=1
par=ETF248 rng=IVOO!a1:bs50 rdim=1 cdim=1
par=ETF249 rng=IVOV!a1:bs50 rdim=1 cdim=1
par=ETF250 rng=IVV!a1:bs50 rdim=1 cdim=1
par=ETF251 rng=IVW!a1:bs50 rdim=1 cdim=1
par=ETF252 rng=IWB!a1:bs50 rdim=1 cdim=1
par=ETF253 rng=IWC!a1:bs50 rdim=1 cdim=1
par=ETF254 rng=IWD!a1:bs50 rdim=1 cdim=1
par=ETF255 rng=IWF!a1:bs50 rdim=1 cdim=1
par=ETF256 rng=IWM!a1:bs50 rdim=1 cdim=1
par=ETF257 rng=IWN!a1:bs50 rdim=1 cdim=1
par=ETF258 rng=IWO!a1:bs50 rdim=1 cdim=1
par=ETF259 rng=IWP!a1:bs50 rdim=1 cdim=1
par=ETF260 rng=IWR!a1:bs50 rdim=1 cdim=1
par=ETF261 rng=IWV!a1:bs50 rdim=1 cdim=1
par=ETF262 rng=IWY!a1:bs50 rdim=1 cdim=1
par=ETF263 rng=IXC!a1:bs50 rdim=1 cdim=1
par=ETF264 rng=IXG!a1:bs50 rdim=1 cdim=1
par=ETF265 rng=IXJ!a1:bs50 rdim=1 cdim=1
par=ETF266 rng=IXN!a1:bs50 rdim=1 cdim=1
par=ETF267 rng=IXP!a1:bs50 rdim=1 cdim=1
par=ETF268 rng=IXUS!a1:bs50 rdim=1 cdim=1
par=ETF269 rng=IYC!a1:bs50 rdim=1 cdim=1
par=ETF270 rng=IYE!a1:bs50 rdim=1 cdim=1
par=ETF271 rng=IYF!a1:bs50 rdim=1 cdim=1
par=ETF272 rng=IYG!a1:bs50 rdim=1 cdim=1
par=ETF273 rng=IYH!a1:bs50 rdim=1 cdim=1
par=ETF274 rng=IYJ!a1:bs50 rdim=1 cdim=1
par=ETF275 rng=IYK!a1:bs50 rdim=1 cdim=1
par=ETF276 rng=IYM!a1:bs50 rdim=1 cdim=1
par=ETF277 rng=IYR!a1:bs50 rdim=1 cdim=1
par=ETF278 rng=IYT!a1:bs50 rdim=1 cdim=1
par=ETF279 rng=IYW!a1:bs50 rdim=1 cdim=1
par=ETF280 rng=IYY!a1:bs50 rdim=1 cdim=1
par=ETF281 rng=IYZ!a1:bs50 rdim=1 cdim=1
par=ETF282 rng=JKD!a1:bs50 rdim=1 cdim=1
par=ETF283 rng=JKE!a1:bs50 rdim=1 cdim=1
par=ETF284 rng=JKG!a1:bs50 rdim=1 cdim=1
par=ETF285 rng=JNK!a1:bs50 rdim=1 cdim=1
par=ETF286 rng=JPXN!a1:bs50 rdim=1 cdim=1
par=ETF287 rng=JXI!a1:bs50 rdim=1 cdim=1
par=ETF288 rng=KBE!a1:bs50 rdim=1 cdim=1
par=ETF289 rng=KBWB!a1:bs50 rdim=1 cdim=1
par=ETF290 rng=KBWP!a1:bs50 rdim=1 cdim=1
par=ETF291 rng=KCE!a1:bs50 rdim=1 cdim=1
par=ETF292 rng=KIE!a1:bs50 rdim=1 cdim=1
par=ETF293 rng=KOL!a1:bs50 rdim=1 cdim=1
par=ETF294 rng=KRE!a1:bs50 rdim=1 cdim=1
par=ETF295 rng=KXI!a1:bs50 rdim=1 cdim=1
par=ETF296 rng=LEMB!a1:bs50 rdim=1 cdim=1
par=ETF297 rng=LQD!a1:bs50 rdim=1 cdim=1
par=ETF298 rng=LTPZ!a1:bs50 rdim=1 cdim=1
par=ETF299 rng=MBB!a1:bs50 rdim=1 cdim=1
par=ETF300 rng=MCHI!a1:bs50 rdim=1 cdim=1
par=ETF301 rng=MDIV!a1:bs50 rdim=1 cdim=1
par=ETF302 rng=MDY!a1:bs50 rdim=1 cdim=1
par=ETF303 rng=MDYG!a1:bs50 rdim=1 cdim=1
par=ETF304 rng=MDYV!a1:bs50 rdim=1 cdim=1
par=ETF305 rng=MGC!a1:bs50 rdim=1 cdim=1
par=ETF306 rng=MGK!a1:bs50 rdim=1 cdim=1
par=ETF307 rng=MGV!a1:bs50 rdim=1 cdim=1
par=ETF308 rng=MINT!a1:bs50 rdim=1 cdim=1
par=ETF309 rng=MLPA!a1:bs50 rdim=1 cdim=1
par=ETF310 rng=MOAT!a1:bs50 rdim=1 cdim=1
par=ETF311 rng=MOO!a1:bs50 rdim=1 cdim=1
par=ETF312 rng=MTUM!a1:bs50 rdim=1 cdim=1
par=ETF313 rng=MUB!a1:bs50 rdim=1 cdim=1
par=ETF314 rng=MUNI!a1:bs50 rdim=1 cdim=1
par=ETF315 rng=MXI!a1:bs50 rdim=1 cdim=1
par=ETF316 rng=NFRA!a1:bs50 rdim=1 cdim=1
par=ETF317 rng=NOBL!a1:bs50 rdim=1 cdim=1
par=ETF318 rng=OEF!a1:bs50 rdim=1 cdim=1
par=ETF319 rng=OIH!a1:bs50 rdim=1 cdim=1
par=ETF320 rng=ONEQ!a1:bs50 rdim=1 cdim=1
par=ETF321 rng=PALL!a1:bs50 rdim=1 cdim=1
par=ETF322 rng=PBE!a1:bs50 rdim=1 cdim=1
par=ETF323 rng=PBJ!a1:bs50 rdim=1 cdim=1
par=ETF324 rng=PCY!a1:bs50 rdim=1 cdim=1
par=ETF325 rng=PDP!a1:bs50 rdim=1 cdim=1
par=ETF326 rng=PEY!a1:bs50 rdim=1 cdim=1
par=ETF327 rng=PFF!a1:bs50 rdim=1 cdim=1
par=ETF328 rng=PFXF!a1:bs50 rdim=1 cdim=1
par=ETF329 rng=PGF!a1:bs50 rdim=1 cdim=1
par=ETF330 rng=PGX!a1:bs50 rdim=1 cdim=1
par=ETF331 rng=PHB!a1:bs50 rdim=1 cdim=1
par=ETF332 rng=PHO!a1:bs50 rdim=1 cdim=1
par=ETF333 rng=PICB!a1:bs50 rdim=1 cdim=1
par=ETF334 rng=PICK!a1:bs50 rdim=1 cdim=1
par=ETF335 rng=PID!a1:bs50 rdim=1 cdim=1
par=ETF336 rng=PJP!a1:bs50 rdim=1 cdim=1
par=ETF337 rng=PKW!a1:bs50 rdim=1 cdim=1
par=ETF338 rng=PLW!a1:bs50 rdim=1 cdim=1
par=ETF339 rng=PNQI!a1:bs50 rdim=1 cdim=1
par=ETF340 rng=PPA!a1:bs50 rdim=1 cdim=1
par=ETF341 rng=PPH!a1:bs50 rdim=1 cdim=1
par=ETF342 rng=PPLT!a1:bs50 rdim=1 cdim=1
par=ETF343 rng=PRF!a1:bs50 rdim=1 cdim=1
par=ETF344 rng=PRFZ!a1:bs50 rdim=1 cdim=1
par=ETF345 rng=PSCC!a1:bs50 rdim=1 cdim=1
par=ETF346 rng=PSCT!a1:bs50 rdim=1 cdim=1
par=ETF347 rng=PSCU!a1:bs50 rdim=1 cdim=1
par=ETF348 rng=PSI!a1:bs50 rdim=1 cdim=1
par=ETF349 rng=PSK!a1:bs50 rdim=1 cdim=1
par=ETF350 rng=PSL!a1:bs50 rdim=1 cdim=1
par=ETF351 rng=PUI!a1:bs50 rdim=1 cdim=1
par=ETF352 rng=PWB!a1:bs50 rdim=1 cdim=1
par=ETF353 rng=PWV!a1:bs50 rdim=1 cdim=1
par=ETF354 rng=PWZ!a1:bs50 rdim=1 cdim=1
par=ETF355 rng=PXF!a1:bs50 rdim=1 cdim=1
par=ETF356 rng=PXH!a1:bs50 rdim=1 cdim=1
par=ETF357 rng=PZA!a1:bs50 rdim=1 cdim=1
par=ETF358 rng=QDF!a1:bs50 rdim=1 cdim=1
par=ETF359 rng=QQEW!a1:bs50 rdim=1 cdim=1
par=ETF360 rng=QQQ!a1:bs50 rdim=1 cdim=1
par=ETF361 rng=QTEC!a1:bs50 rdim=1 cdim=1
par=ETF362 rng=QUAL!a1:bs50 rdim=1 cdim=1
par=ETF363 rng=RDIV!a1:bs50 rdim=1 cdim=1
par=ETF364 rng=REET!a1:bs50 rdim=1 cdim=1
par=ETF365 rng=REM!a1:bs50 rdim=1 cdim=1
par=ETF366 rng=REZ!a1:bs50 rdim=1 cdim=1
par=ETF367 rng=RFG!a1:bs50 rdim=1 cdim=1
par=ETF368 rng=RGI!a1:bs50 rdim=1 cdim=1
par=ETF369 rng=RHS!a1:bs50 rdim=1 cdim=1
par=ETF370 rng=RING!a1:bs50 rdim=1 cdim=1
par=ETF371 rng=RPG!a1:bs50 rdim=1 cdim=1
par=ETF372 rng=RPV!a1:bs50 rdim=1 cdim=1
par=ETF373 rng=RSP!a1:bs50 rdim=1 cdim=1
par=ETF374 rng=RSX!a1:bs50 rdim=1 cdim=1
par=ETF375 rng=RTH!a1:bs50 rdim=1 cdim=1
par=ETF376 rng=RWJ!a1:bs50 rdim=1 cdim=1
par=ETF377 rng=RWL!a1:bs50 rdim=1 cdim=1
par=ETF378 rng=RWO!a1:bs50 rdim=1 cdim=1
par=ETF379 rng=RWR!a1:bs50 rdim=1 cdim=1
par=ETF380 rng=RWX!a1:bs50 rdim=1 cdim=1
par=ETF381 rng=RXI!a1:bs50 rdim=1 cdim=1
par=ETF382 rng=RYE!a1:bs50 rdim=1 cdim=1
par=ETF383 rng=RYF!a1:bs50 rdim=1 cdim=1
par=ETF384 rng=RYH!a1:bs50 rdim=1 cdim=1
par=ETF385 rng=RYT!a1:bs50 rdim=1 cdim=1
par=ETF386 rng=RYU!a1:bs50 rdim=1 cdim=1
par=ETF387 rng=SCHA!a1:bs50 rdim=1 cdim=1
par=ETF388 rng=SCHB!a1:bs50 rdim=1 cdim=1
par=ETF389 rng=SCHC!a1:bs50 rdim=1 cdim=1
par=ETF390 rng=SCHD!a1:bs50 rdim=1 cdim=1
par=ETF391 rng=SCHE!a1:bs50 rdim=1 cdim=1
par=ETF392 rng=SCHF!a1:bs50 rdim=1 cdim=1
par=ETF393 rng=SCHG!a1:bs50 rdim=1 cdim=1
par=ETF394 rng=SCHH!a1:bs50 rdim=1 cdim=1
par=ETF395 rng=SCHM!a1:bs50 rdim=1 cdim=1
par=ETF396 rng=SCHO!a1:bs50 rdim=1 cdim=1
par=ETF397 rng=SCHP!a1:bs50 rdim=1 cdim=1
par=ETF398 rng=SCHR!a1:bs50 rdim=1 cdim=1
par=ETF399 rng=SCHV!a1:bs50 rdim=1 cdim=1
par=ETF400 rng=SCHX!a1:bs50 rdim=1 cdim=1
par=ETF401 rng=SCHZ!a1:bs50 rdim=1 cdim=1
par=ETF402 rng=SCJ!a1:bs50 rdim=1 cdim=1
par=ETF403 rng=SCZ!a1:bs50 rdim=1 cdim=1
par=ETF404 rng=SDIV!a1:bs50 rdim=1 cdim=1
par=ETF405 rng=SDOG!a1:bs50 rdim=1 cdim=1
par=ETF406 rng=SDY!a1:bs50 rdim=1 cdim=1
par=ETF407 rng=SGDM!a1:bs50 rdim=1 cdim=1
par=ETF408 rng=SGOL!a1:bs50 rdim=1 cdim=1
par=ETF409 rng=SHM!a1:bs50 rdim=1 cdim=1
par=ETF410 rng=SHV!a1:bs50 rdim=1 cdim=1
par=ETF411 rng=SHY!a1:bs50 rdim=1 cdim=1
par=ETF412 rng=SHYG!a1:bs50 rdim=1 cdim=1
par=ETF413 rng=SIL!a1:bs50 rdim=1 cdim=1
par=ETF414 rng=SILJ!a1:bs50 rdim=1 cdim=1
par=ETF415 rng=SIVR!a1:bs50 rdim=1 cdim=1
par=ETF416 rng=SIZE!a1:bs50 rdim=1 cdim=1
par=ETF417 rng=SJNK!a1:bs50 rdim=1 cdim=1
par=ETF418 rng=SKYY!a1:bs50 rdim=1 cdim=1
par=ETF419 rng=SLQD!a1:bs50 rdim=1 cdim=1
par=ETF420 rng=SLV!a1:bs50 rdim=1 cdim=1
par=ETF421 rng=SLVP!a1:bs50 rdim=1 cdim=1
par=ETF422 rng=SLX!a1:bs50 rdim=1 cdim=1
par=ETF423 rng=SLY!a1:bs50 rdim=1 cdim=1
par=ETF424 rng=SLYG!a1:bs50 rdim=1 cdim=1
par=ETF425 rng=SLYV!a1:bs50 rdim=1 cdim=1
par=ETF426 rng=SMH!a1:bs50 rdim=1 cdim=1
par=ETF427 rng=SMLV!a1:bs50 rdim=1 cdim=1
par=ETF428 rng=SNLN!a1:bs50 rdim=1 cdim=1
par=ETF429 rng=SOCL!a1:bs50 rdim=1 cdim=1
par=ETF430 rng=SOXX!a1:bs50 rdim=1 cdim=1
par=ETF431 rng=SPFF!a1:bs50 rdim=1 cdim=1
par=ETF432 rng=SPHB!a1:bs50 rdim=1 cdim=1
par=ETF433 rng=SPHD!a1:bs50 rdim=1 cdim=1
par=ETF434 rng=SPHQ!a1:bs50 rdim=1 cdim=1
par=ETF435 rng=SPLV!a1:bs50 rdim=1 cdim=1
par=ETF436 rng=SPY!a1:bs50 rdim=1 cdim=1
par=ETF437 rng=SPYG!a1:bs50 rdim=1 cdim=1
par=ETF438 rng=SRLN!a1:bs50 rdim=1 cdim=1
par=ETF439 rng=STIP!a1:bs50 rdim=1 cdim=1
par=ETF440 rng=STPZ!a1:bs50 rdim=1 cdim=1
par=ETF441 rng=SUB!a1:bs50 rdim=1 cdim=1
par=ETF442 rng=TAN!a1:bs50 rdim=1 cdim=1
par=ETF443 rng=TDIV!a1:bs50 rdim=1 cdim=1
par=ETF444 rng=TDTF!a1:bs50 rdim=1 cdim=1
par=ETF445 rng=TDTT!a1:bs50 rdim=1 cdim=1
par=ETF446 rng=TFI!a1:bs50 rdim=1 cdim=1
par=ETF447 rng=THD!a1:bs50 rdim=1 cdim=1
par=ETF448 rng=TILT!a1:bs50 rdim=1 cdim=1
par=ETF449 rng=TIP!a1:bs50 rdim=1 cdim=1
par=ETF450 rng=TLH!a1:bs50 rdim=1 cdim=1
par=ETF451 rng=TLT!a1:bs50 rdim=1 cdim=1
par=ETF452 rng=TLTD!a1:bs50 rdim=1 cdim=1
par=ETF453 rng=TOK!a1:bs50 rdim=1 cdim=1
par=ETF454 rng=TUR!a1:bs50 rdim=1 cdim=1
par=ETF455 rng=UGA!a1:bs50 rdim=1 cdim=1
par=ETF456 rng=URA!a1:bs50 rdim=1 cdim=1
par=ETF457 rng=URTH!a1:bs50 rdim=1 cdim=1
par=ETF458 rng=USDU!a1:bs50 rdim=1 cdim=1
par=ETF459 rng=USMV!a1:bs50 rdim=1 cdim=1
par=ETF460 rng=UUP!a1:bs50 rdim=1 cdim=1
par=ETF461 rng=VAW!a1:bs50 rdim=1 cdim=1
par=ETF462 rng=VB!a1:bs50 rdim=1 cdim=1
par=ETF463 rng=VBK!a1:bs50 rdim=1 cdim=1
par=ETF464 rng=VBR!a1:bs50 rdim=1 cdim=1
par=ETF465 rng=VCIT!a1:bs50 rdim=1 cdim=1
par=ETF466 rng=VCLT!a1:bs50 rdim=1 cdim=1
par=ETF467 rng=VCR!a1:bs50 rdim=1 cdim=1
par=ETF468 rng=VCSH!a1:bs50 rdim=1 cdim=1
par=ETF469 rng=VDC!a1:bs50 rdim=1 cdim=1
par=ETF470 rng=VDE!a1:bs50 rdim=1 cdim=1
par=ETF471 rng=VEA!a1:bs50 rdim=1 cdim=1
par=ETF472 rng=VEU!a1:bs50 rdim=1 cdim=1
par=ETF473 rng=VFH!a1:bs50 rdim=1 cdim=1
par=ETF474 rng=VGIT!a1:bs50 rdim=1 cdim=1
par=ETF475 rng=VGK!a1:bs50 rdim=1 cdim=1
par=ETF476 rng=VGLT!a1:bs50 rdim=1 cdim=1
par=ETF477 rng=VGSH!a1:bs50 rdim=1 cdim=1
par=ETF478 rng=VGT!a1:bs50 rdim=1 cdim=1
par=ETF479 rng=VHT!a1:bs50 rdim=1 cdim=1
par=ETF480 rng=VIG!a1:bs50 rdim=1 cdim=1
par=ETF481 rng=VIOO!a1:bs50 rdim=1 cdim=1
par=ETF482 rng=VIS!a1:bs50 rdim=1 cdim=1
par=ETF483 rng=VLUE!a1:bs50 rdim=1 cdim=1
par=ETF484 rng=VMBS!a1:bs50 rdim=1 cdim=1
par=ETF485 rng=VNM!a1:bs50 rdim=1 cdim=1
par=ETF486 rng=VNQ!a1:bs50 rdim=1 cdim=1
par=ETF487 rng=VNQI!a1:bs50 rdim=1 cdim=1
par=ETF488 rng=VO!a1:bs50 rdim=1 cdim=1
par=ETF489 rng=VOE!a1:bs50 rdim=1 cdim=1
par=ETF490 rng=VONE!a1:bs50 rdim=1 cdim=1
par=ETF491 rng=VONG!a1:bs50 rdim=1 cdim=1
par=ETF492 rng=VONV!a1:bs50 rdim=1 cdim=1
par=ETF493 rng=VOO!a1:bs50 rdim=1 cdim=1
par=ETF494 rng=VOOG!a1:bs50 rdim=1 cdim=1
par=ETF495 rng=VOOV!a1:bs50 rdim=1 cdim=1
par=ETF496 rng=VOT!a1:bs50 rdim=1 cdim=1
par=ETF497 rng=VOX!a1:bs50 rdim=1 cdim=1
par=ETF498 rng=VPL!a1:bs50 rdim=1 cdim=1
par=ETF499 rng=VPU!a1:bs50 rdim=1 cdim=1
par=ETF500 rng=VRP!a1:bs50 rdim=1 cdim=1
par=ETF501 rng=VSS!a1:bs50 rdim=1 cdim=1
par=ETF502 rng=VT!a1:bs50 rdim=1 cdim=1
par=ETF503 rng=VTI!a1:bs50 rdim=1 cdim=1
par=ETF504 rng=VTIP!a1:bs50 rdim=1 cdim=1
par=ETF505 rng=VTV!a1:bs50 rdim=1 cdim=1
par=ETF506 rng=VTWO!a1:bs50 rdim=1 cdim=1
par=ETF507 rng=VUG!a1:bs50 rdim=1 cdim=1
par=ETF508 rng=VV!a1:bs50 rdim=1 cdim=1
par=ETF509 rng=VWO!a1:bs50 rdim=1 cdim=1
par=ETF510 rng=VWOB!a1:bs50 rdim=1 cdim=1
par=ETF511 rng=VXF!a1:bs50 rdim=1 cdim=1
par=ETF512 rng=VXUS!a1:bs50 rdim=1 cdim=1
par=ETF513 rng=VYM!a1:bs50 rdim=1 cdim=1
par=ETF514 rng=WIP!a1:bs50 rdim=1 cdim=1
par=ETF515 rng=XBI!a1:bs50 rdim=1 cdim=1
par=ETF516 rng=XES!a1:bs50 rdim=1 cdim=1
par=ETF517 rng=XHB!a1:bs50 rdim=1 cdim=1
par=ETF518 rng=XHS!a1:bs50 rdim=1 cdim=1
par=ETF519 rng=XLB!a1:bs50 rdim=1 cdim=1
par=ETF520 rng=XLE!a1:bs50 rdim=1 cdim=1
par=ETF521 rng=XLF!a1:bs50 rdim=1 cdim=1
par=ETF522 rng=XLG!a1:bs50 rdim=1 cdim=1
par=ETF523 rng=XLI!a1:bs50 rdim=1 cdim=1
par=ETF524 rng=XLK!a1:bs50 rdim=1 cdim=1
par=ETF525 rng=XLP!a1:bs50 rdim=1 cdim=1
par=ETF526 rng=XLU!a1:bs50 rdim=1 cdim=1
par=ETF527 rng=XLV!a1:bs50 rdim=1 cdim=1
par=ETF528 rng=XLY!a1:bs50 rdim=1 cdim=1
par=ETF529 rng=XME!a1:bs50 rdim=1 cdim=1
par=ETF530 rng=XMLV!a1:bs50 rdim=1 cdim=1
par=ETF531 rng=XOP!a1:bs50 rdim=1 cdim=1
par=ETF532 rng=XPH!a1:bs50 rdim=1 cdim=1
par=ETF533 rng=XRT!a1:bs50 rdim=1 cdim=1
par=ETF534 rng=XSD!a1:bs50 rdim=1 cdim=1
par=ETF535 rng=XSLV!a1:bs50 rdim=1 cdim=1
par=ETF536 rng=XTN!a1:bs50 rdim=1 cdim=1
par=ETF537 rng=ZROZ!a1:bs50 rdim=1 cdim=1
$offecho

*Get data from excel file into gdx file
$call gdxxrw MCsimulation70.xls trace=3 @tasks.txt

$GDXIN MCsimulation70.gdx
$LOAD ETF1
$LOAD ETF2
$LOAD ETF3
$LOAD ETF4
$LOAD ETF5
$LOAD ETF6
$LOAD ETF7
$LOAD ETF8
$LOAD ETF9
$LOAD ETF10
$LOAD ETF11
$LOAD ETF12
$LOAD ETF13
$LOAD ETF14
$LOAD ETF15
$LOAD ETF16
$LOAD ETF17
$LOAD ETF18
$LOAD ETF19
$LOAD ETF20
$LOAD ETF21
$LOAD ETF22
$LOAD ETF23
$LOAD ETF24
$LOAD ETF25
$LOAD ETF26
$LOAD ETF27
$LOAD ETF28
$LOAD ETF29
$LOAD ETF30
$LOAD ETF31
$LOAD ETF32
$LOAD ETF33
$LOAD ETF34
$LOAD ETF35
$LOAD ETF36
$LOAD ETF37
$LOAD ETF38
$LOAD ETF39
$LOAD ETF40
$LOAD ETF41
$LOAD ETF42
$LOAD ETF43
$LOAD ETF44
$LOAD ETF45
$LOAD ETF46
$LOAD ETF47
$LOAD ETF48
$LOAD ETF49
$LOAD ETF50
$LOAD ETF51
$LOAD ETF52
$LOAD ETF53
$LOAD ETF54
$LOAD ETF55
$LOAD ETF56
$LOAD ETF57
$LOAD ETF58
$LOAD ETF59
$LOAD ETF60
$LOAD ETF61
$LOAD ETF62
$LOAD ETF63
$LOAD ETF64
$LOAD ETF65
$LOAD ETF66
$LOAD ETF67
$LOAD ETF68
$LOAD ETF69
$LOAD ETF70
$LOAD ETF71
$LOAD ETF72
$LOAD ETF73
$LOAD ETF74
$LOAD ETF75
$LOAD ETF76
$LOAD ETF77
$LOAD ETF78
$LOAD ETF79
$LOAD ETF80
$LOAD ETF81
$LOAD ETF82
$LOAD ETF83
$LOAD ETF84
$LOAD ETF85
$LOAD ETF86
$LOAD ETF87
$LOAD ETF88
$LOAD ETF89
$LOAD ETF90
$LOAD ETF91
$LOAD ETF92
$LOAD ETF93
$LOAD ETF94
$LOAD ETF95
$LOAD ETF96
$LOAD ETF97
$LOAD ETF98
$LOAD ETF99
$LOAD ETF100
$LOAD ETF101
$LOAD ETF102
$LOAD ETF103
$LOAD ETF104
$LOAD ETF105
$LOAD ETF106
$LOAD ETF107
$LOAD ETF108
$LOAD ETF109
$LOAD ETF110
$LOAD ETF111
$LOAD ETF112
$LOAD ETF113
$LOAD ETF114
$LOAD ETF115
$LOAD ETF116
$LOAD ETF117
$LOAD ETF118
$LOAD ETF119
$LOAD ETF120
$LOAD ETF121
$LOAD ETF122
$LOAD ETF123
$LOAD ETF124
$LOAD ETF125
$LOAD ETF126
$LOAD ETF127
$LOAD ETF128
$LOAD ETF129
$LOAD ETF130
$LOAD ETF131
$LOAD ETF132
$LOAD ETF133
$LOAD ETF134
$LOAD ETF135
$LOAD ETF136
$LOAD ETF137
$LOAD ETF138
$LOAD ETF139
$LOAD ETF140
$LOAD ETF141
$LOAD ETF142
$LOAD ETF143
$LOAD ETF144
$LOAD ETF145
$LOAD ETF146
$LOAD ETF147
$LOAD ETF148
$LOAD ETF149
$LOAD ETF150
$LOAD ETF151
$LOAD ETF152
$LOAD ETF153
$LOAD ETF154
$LOAD ETF155
$LOAD ETF156
$LOAD ETF157
$LOAD ETF158
$LOAD ETF159
$LOAD ETF160
$LOAD ETF161
$LOAD ETF162
$LOAD ETF163
$LOAD ETF164
$LOAD ETF165
$LOAD ETF166
$LOAD ETF167
$LOAD ETF168
$LOAD ETF169
$LOAD ETF170
$LOAD ETF171
$LOAD ETF172
$LOAD ETF173
$LOAD ETF174
$LOAD ETF175
$LOAD ETF176
$LOAD ETF177
$LOAD ETF178
$LOAD ETF179
$LOAD ETF180
$LOAD ETF181
$LOAD ETF182
$LOAD ETF183
$LOAD ETF184
$LOAD ETF185
$LOAD ETF186
$LOAD ETF187
$LOAD ETF188
$LOAD ETF189
$LOAD ETF190
$LOAD ETF191
$LOAD ETF192
$LOAD ETF193
$LOAD ETF194
$LOAD ETF195
$LOAD ETF196
$LOAD ETF197
$LOAD ETF198
$LOAD ETF199
$LOAD ETF200
$LOAD ETF201
$LOAD ETF202
$LOAD ETF203
$LOAD ETF204
$LOAD ETF205
$LOAD ETF206
$LOAD ETF207
$LOAD ETF208
$LOAD ETF209
$LOAD ETF210
$LOAD ETF211
$LOAD ETF212
$LOAD ETF213
$LOAD ETF214
$LOAD ETF215
$LOAD ETF216
$LOAD ETF217
$LOAD ETF218
$LOAD ETF219
$LOAD ETF220
$LOAD ETF221
$LOAD ETF222
$LOAD ETF223
$LOAD ETF224
$LOAD ETF225
$LOAD ETF226
$LOAD ETF227
$LOAD ETF228
$LOAD ETF229
$LOAD ETF230
$LOAD ETF231
$LOAD ETF232
$LOAD ETF233
$LOAD ETF234
$LOAD ETF235
$LOAD ETF236
$LOAD ETF237
$LOAD ETF238
$LOAD ETF239
$LOAD ETF240
$LOAD ETF241
$LOAD ETF242
$LOAD ETF243
$LOAD ETF244
$LOAD ETF245
$LOAD ETF246
$LOAD ETF247
$LOAD ETF248
$LOAD ETF249
$LOAD ETF250
$LOAD ETF251
$LOAD ETF252
$LOAD ETF253
$LOAD ETF254
$LOAD ETF255
$LOAD ETF256
$LOAD ETF257
$LOAD ETF258
$LOAD ETF259
$LOAD ETF260
$LOAD ETF261
$LOAD ETF262
$LOAD ETF263
$LOAD ETF264
$LOAD ETF265
$LOAD ETF266
$LOAD ETF267
$LOAD ETF268
$LOAD ETF269
$LOAD ETF270
$LOAD ETF271
$LOAD ETF272
$LOAD ETF273
$LOAD ETF274
$LOAD ETF275
$LOAD ETF276
$LOAD ETF277
$LOAD ETF278
$LOAD ETF279
$LOAD ETF280
$LOAD ETF281
$LOAD ETF282
$LOAD ETF283
$LOAD ETF284
$LOAD ETF285
$LOAD ETF286
$LOAD ETF287
$LOAD ETF288
$LOAD ETF289
$LOAD ETF290
$LOAD ETF291
$LOAD ETF292
$LOAD ETF293
$LOAD ETF294
$LOAD ETF295
$LOAD ETF296
$LOAD ETF297
$LOAD ETF298
$LOAD ETF299
$LOAD ETF300
$LOAD ETF301
$LOAD ETF302
$LOAD ETF303
$LOAD ETF304
$LOAD ETF305
$LOAD ETF306
$LOAD ETF307
$LOAD ETF308
$LOAD ETF309
$LOAD ETF310
$LOAD ETF311
$LOAD ETF312
$LOAD ETF313
$LOAD ETF314
$LOAD ETF315
$LOAD ETF316
$LOAD ETF317
$LOAD ETF318
$LOAD ETF319
$LOAD ETF320
$LOAD ETF321
$LOAD ETF322
$LOAD ETF323
$LOAD ETF324
$LOAD ETF325
$LOAD ETF326
$LOAD ETF327
$LOAD ETF328
$LOAD ETF329
$LOAD ETF330
$LOAD ETF331
$LOAD ETF332
$LOAD ETF333
$LOAD ETF334
$LOAD ETF335
$LOAD ETF336
$LOAD ETF337
$LOAD ETF338
$LOAD ETF339
$LOAD ETF340
$LOAD ETF341
$LOAD ETF342
$LOAD ETF343
$LOAD ETF344
$LOAD ETF345
$LOAD ETF346
$LOAD ETF347
$LOAD ETF348
$LOAD ETF349
$LOAD ETF350
$LOAD ETF351
$LOAD ETF352
$LOAD ETF353
$LOAD ETF354
$LOAD ETF355
$LOAD ETF356
$LOAD ETF357
$LOAD ETF358
$LOAD ETF359
$LOAD ETF360
$LOAD ETF361
$LOAD ETF362
$LOAD ETF363
$LOAD ETF364
$LOAD ETF365
$LOAD ETF366
$LOAD ETF367
$LOAD ETF368
$LOAD ETF369
$LOAD ETF370
$LOAD ETF371
$LOAD ETF372
$LOAD ETF373
$LOAD ETF374
$LOAD ETF375
$LOAD ETF376
$LOAD ETF377
$LOAD ETF378
$LOAD ETF379
$LOAD ETF380
$LOAD ETF381
$LOAD ETF382
$LOAD ETF383
$LOAD ETF384
$LOAD ETF385
$LOAD ETF386
$LOAD ETF387
$LOAD ETF388
$LOAD ETF389
$LOAD ETF390
$LOAD ETF391
$LOAD ETF392
$LOAD ETF393
$LOAD ETF394
$LOAD ETF395
$LOAD ETF396
$LOAD ETF397
$LOAD ETF398
$LOAD ETF399
$LOAD ETF400
$LOAD ETF401
$LOAD ETF402
$LOAD ETF403
$LOAD ETF404
$LOAD ETF405
$LOAD ETF406
$LOAD ETF407
$LOAD ETF408
$LOAD ETF409
$LOAD ETF410
$LOAD ETF411
$LOAD ETF412
$LOAD ETF413
$LOAD ETF414
$LOAD ETF415
$LOAD ETF416
$LOAD ETF417
$LOAD ETF418
$LOAD ETF419
$LOAD ETF420
$LOAD ETF421
$LOAD ETF422
$LOAD ETF423
$LOAD ETF424
$LOAD ETF425
$LOAD ETF426
$LOAD ETF427
$LOAD ETF428
$LOAD ETF429
$LOAD ETF430
$LOAD ETF431
$LOAD ETF432
$LOAD ETF433
$LOAD ETF434
$LOAD ETF435
$LOAD ETF436
$LOAD ETF437
$LOAD ETF438
$LOAD ETF439
$LOAD ETF440
$LOAD ETF441
$LOAD ETF442
$LOAD ETF443
$LOAD ETF444
$LOAD ETF445
$LOAD ETF446
$LOAD ETF447
$LOAD ETF448
$LOAD ETF449
$LOAD ETF450
$LOAD ETF451
$LOAD ETF452
$LOAD ETF453
$LOAD ETF454
$LOAD ETF455
$LOAD ETF456
$LOAD ETF457
$LOAD ETF458
$LOAD ETF459
$LOAD ETF460
$LOAD ETF461
$LOAD ETF462
$LOAD ETF463
$LOAD ETF464
$LOAD ETF465
$LOAD ETF466
$LOAD ETF467
$LOAD ETF468
$LOAD ETF469
$LOAD ETF470
$LOAD ETF471
$LOAD ETF472
$LOAD ETF473
$LOAD ETF474
$LOAD ETF475
$LOAD ETF476
$LOAD ETF477
$LOAD ETF478
$LOAD ETF479
$LOAD ETF480
$LOAD ETF481
$LOAD ETF482
$LOAD ETF483
$LOAD ETF484
$LOAD ETF485
$LOAD ETF486
$LOAD ETF487
$LOAD ETF488
$LOAD ETF489
$LOAD ETF490
$LOAD ETF491
$LOAD ETF492
$LOAD ETF493
$LOAD ETF494
$LOAD ETF495
$LOAD ETF496
$LOAD ETF497
$LOAD ETF498
$LOAD ETF499
$LOAD ETF500
$LOAD ETF501
$LOAD ETF502
$LOAD ETF503
$LOAD ETF504
$LOAD ETF505
$LOAD ETF506
$LOAD ETF507
$LOAD ETF508
$LOAD ETF509
$LOAD ETF510
$LOAD ETF511
$LOAD ETF512
$LOAD ETF513
$LOAD ETF514
$LOAD ETF515
$LOAD ETF516
$LOAD ETF517
$LOAD ETF518
$LOAD ETF519
$LOAD ETF520
$LOAD ETF521
$LOAD ETF522
$LOAD ETF523
$LOAD ETF524
$LOAD ETF525
$LOAD ETF526
$LOAD ETF527
$LOAD ETF528
$LOAD ETF529
$LOAD ETF530
$LOAD ETF531
$LOAD ETF532
$LOAD ETF533
$LOAD ETF534
$LOAD ETF535
$LOAD ETF536
$LOAD ETF537
$GDXIN



*The parameter that keeps track of scenarios for each etf parameter RetScen( roll , scen , i ) ;
ScenarioReturnP('ANGL',s,p)=ETF1(p,s);
ScenarioReturnP('AOA',s,p)=ETF2(p,s);
ScenarioReturnP('AOK',s,p)=ETF3(p,s);
ScenarioReturnP('AOM',s,p)=ETF4(p,s);
ScenarioReturnP('AOR',s,p)=ETF5(p,s);
ScenarioReturnP('ASHR',s,p)=ETF6(p,s);
ScenarioReturnP('BAB',s,p)=ETF7(p,s);
ScenarioReturnP('BBH',s,p)=ETF8(p,s);
ScenarioReturnP('BIL',s,p)=ETF9(p,s);
ScenarioReturnP('BIV',s,p)=ETF10(p,s);
ScenarioReturnP('BKLN',s,p)=ETF11(p,s);
ScenarioReturnP('BLV',s,p)=ETF12(p,s);
ScenarioReturnP('BND',s,p)=ETF13(p,s);
ScenarioReturnP('BNDX',s,p)=ETF14(p,s);
ScenarioReturnP('BOND',s,p)=ETF15(p,s);
ScenarioReturnP('BRF',s,p)=ETF16(p,s);
ScenarioReturnP('BSCK',s,p)=ETF17(p,s);
ScenarioReturnP('BSCL',s,p)=ETF18(p,s);
ScenarioReturnP('BSCM',s,p)=ETF19(p,s);
ScenarioReturnP('BSJK',s,p)=ETF20(p,s);
ScenarioReturnP('BSV',s,p)=ETF21(p,s);
ScenarioReturnP('BWX',s,p)=ETF22(p,s);
ScenarioReturnP('CDC',s,p)=ETF23(p,s);
ScenarioReturnP('CGW',s,p)=ETF24(p,s);
ScenarioReturnP('CMBS',s,p)=ETF25(p,s);
ScenarioReturnP('CMF',s,p)=ETF26(p,s);
ScenarioReturnP('CORP',s,p)=ETF27(p,s);
ScenarioReturnP('CSM',s,p)=ETF28(p,s);
ScenarioReturnP('CWB',s,p)=ETF29(p,s);
ScenarioReturnP('CWI',s,p)=ETF30(p,s);
ScenarioReturnP('DBA',s,p)=ETF31(p,s);
ScenarioReturnP('DBB',s,p)=ETF32(p,s);
ScenarioReturnP('DBC',s,p)=ETF33(p,s);
ScenarioReturnP('DBE',s,p)=ETF34(p,s);
ScenarioReturnP('DBEF',s,p)=ETF35(p,s);
ScenarioReturnP('DBEU',s,p)=ETF36(p,s);
ScenarioReturnP('DBJP',s,p)=ETF37(p,s);
ScenarioReturnP('DBO',s,p)=ETF38(p,s);
ScenarioReturnP('DBP',s,p)=ETF39(p,s);
ScenarioReturnP('DBS',s,p)=ETF40(p,s);
ScenarioReturnP('DBV',s,p)=ETF41(p,s);
ScenarioReturnP('DEM',s,p)=ETF42(p,s);
ScenarioReturnP('DES',s,p)=ETF43(p,s);
ScenarioReturnP('DFE',s,p)=ETF44(p,s);
ScenarioReturnP('DFJ',s,p)=ETF45(p,s);
ScenarioReturnP('DGL',s,p)=ETF46(p,s);
ScenarioReturnP('DGRO',s,p)=ETF47(p,s);
ScenarioReturnP('DGRW',s,p)=ETF48(p,s);
ScenarioReturnP('DGS',s,p)=ETF49(p,s);
ScenarioReturnP('DHS',s,p)=ETF50(p,s);
ScenarioReturnP('DIA',s,p)=ETF51(p,s);
ScenarioReturnP('DIV',s,p)=ETF52(p,s);
ScenarioReturnP('DJP',s,p)=ETF53(p,s);
ScenarioReturnP('DLN',s,p)=ETF54(p,s);
ScenarioReturnP('DLS',s,p)=ETF55(p,s);
ScenarioReturnP('DOL',s,p)=ETF56(p,s);
ScenarioReturnP('DON',s,p)=ETF57(p,s);
ScenarioReturnP('DSI',s,p)=ETF58(p,s);
ScenarioReturnP('DTD',s,p)=ETF59(p,s);
ScenarioReturnP('DTN',s,p)=ETF60(p,s);
ScenarioReturnP('DVY',s,p)=ETF61(p,s);
ScenarioReturnP('DVYA',s,p)=ETF62(p,s);
ScenarioReturnP('DVYE',s,p)=ETF63(p,s);
ScenarioReturnP('DWM',s,p)=ETF64(p,s);
ScenarioReturnP('DWX',s,p)=ETF65(p,s);
ScenarioReturnP('DXGE',s,p)=ETF66(p,s);
ScenarioReturnP('DXJ',s,p)=ETF67(p,s);
ScenarioReturnP('EBND',s,p)=ETF68(p,s);
ScenarioReturnP('ECH',s,p)=ETF69(p,s);
ScenarioReturnP('EDEN',s,p)=ETF70(p,s);
ScenarioReturnP('EDIV',s,p)=ETF71(p,s);
ScenarioReturnP('EDV',s,p)=ETF72(p,s);
ScenarioReturnP('EELV',s,p)=ETF73(p,s);
ScenarioReturnP('EEM',s,p)=ETF74(p,s);
ScenarioReturnP('EEMA',s,p)=ETF75(p,s);
ScenarioReturnP('EEMS',s,p)=ETF76(p,s);
ScenarioReturnP('EEMV',s,p)=ETF77(p,s);
ScenarioReturnP('EFA',s,p)=ETF78(p,s);
ScenarioReturnP('EFAV',s,p)=ETF79(p,s);
ScenarioReturnP('EFG',s,p)=ETF80(p,s);
ScenarioReturnP('EFV',s,p)=ETF81(p,s);
ScenarioReturnP('EIDO',s,p)=ETF82(p,s);
ScenarioReturnP('EIRL',s,p)=ETF83(p,s);
ScenarioReturnP('ELD',s,p)=ETF84(p,s);
ScenarioReturnP('EMB',s,p)=ETF85(p,s);
ScenarioReturnP('EMHY',s,p)=ETF86(p,s);
ScenarioReturnP('EMLC',s,p)=ETF87(p,s);
ScenarioReturnP('ENZL',s,p)=ETF88(p,s);
ScenarioReturnP('EPHE',s,p)=ETF89(p,s);
ScenarioReturnP('EPOL',s,p)=ETF90(p,s);
ScenarioReturnP('EPP',s,p)=ETF91(p,s);
ScenarioReturnP('EPU',s,p)=ETF92(p,s);
ScenarioReturnP('EUFN',s,p)=ETF93(p,s);
ScenarioReturnP('EWA',s,p)=ETF94(p,s);
ScenarioReturnP('EWC',s,p)=ETF95(p,s);
ScenarioReturnP('EWD',s,p)=ETF96(p,s);
ScenarioReturnP('EWG',s,p)=ETF97(p,s);
ScenarioReturnP('EWH',s,p)=ETF98(p,s);
ScenarioReturnP('EWI',s,p)=ETF99(p,s);
ScenarioReturnP('EWJ',s,p)=ETF100(p,s);
ScenarioReturnP('EWK',s,p)=ETF101(p,s);
ScenarioReturnP('EWL',s,p)=ETF102(p,s);
ScenarioReturnP('EWM',s,p)=ETF103(p,s);
ScenarioReturnP('EWN',s,p)=ETF104(p,s);
ScenarioReturnP('EWP',s,p)=ETF105(p,s);
ScenarioReturnP('EWQ',s,p)=ETF106(p,s);
ScenarioReturnP('EWS',s,p)=ETF107(p,s);
ScenarioReturnP('EWT',s,p)=ETF108(p,s);
ScenarioReturnP('EWU',s,p)=ETF109(p,s);
ScenarioReturnP('EWW',s,p)=ETF110(p,s);
ScenarioReturnP('EWX',s,p)=ETF111(p,s);
ScenarioReturnP('EWY',s,p)=ETF112(p,s);
ScenarioReturnP('EWZ',s,p)=ETF113(p,s);
ScenarioReturnP('EZA',s,p)=ETF114(p,s);
ScenarioReturnP('EZM',s,p)=ETF115(p,s);
ScenarioReturnP('EZU',s,p)=ETF116(p,s);
ScenarioReturnP('FBT',s,p)=ETF117(p,s);
ScenarioReturnP('FCG',s,p)=ETF118(p,s);
ScenarioReturnP('FCOM',s,p)=ETF119(p,s);
ScenarioReturnP('FDD',s,p)=ETF120(p,s);
ScenarioReturnP('FDIS',s,p)=ETF121(p,s);
ScenarioReturnP('FDL',s,p)=ETF122(p,s);
ScenarioReturnP('FDN',s,p)=ETF123(p,s);
ScenarioReturnP('FENY',s,p)=ETF124(p,s);
ScenarioReturnP('FEU',s,p)=ETF125(p,s);
ScenarioReturnP('FEX',s,p)=ETF126(p,s);
ScenarioReturnP('FEZ',s,p)=ETF127(p,s);
ScenarioReturnP('FGD',s,p)=ETF128(p,s);
ScenarioReturnP('FHLC',s,p)=ETF129(p,s);
ScenarioReturnP('FIDU',s,p)=ETF130(p,s);
ScenarioReturnP('FLOT',s,p)=ETF131(p,s);
ScenarioReturnP('FLRN',s,p)=ETF132(p,s);
ScenarioReturnP('FMAT',s,p)=ETF133(p,s);
ScenarioReturnP('FNCL',s,p)=ETF134(p,s);
ScenarioReturnP('FNDA',s,p)=ETF135(p,s);
ScenarioReturnP('FNDC',s,p)=ETF136(p,s);
ScenarioReturnP('FNDE',s,p)=ETF137(p,s);
ScenarioReturnP('FNDF',s,p)=ETF138(p,s);
ScenarioReturnP('FNDX',s,p)=ETF139(p,s);
ScenarioReturnP('FNX',s,p)=ETF140(p,s);
ScenarioReturnP('FPX',s,p)=ETF141(p,s);
ScenarioReturnP('FRI',s,p)=ETF142(p,s);
ScenarioReturnP('FSTA',s,p)=ETF143(p,s);
ScenarioReturnP('FTA',s,p)=ETF144(p,s);
ScenarioReturnP('FTC',s,p)=ETF145(p,s);
ScenarioReturnP('FTCS',s,p)=ETF146(p,s);
ScenarioReturnP('FTEC',s,p)=ETF147(p,s);
ScenarioReturnP('FTSM',s,p)=ETF148(p,s);
ScenarioReturnP('FUTY',s,p)=ETF149(p,s);
ScenarioReturnP('FVD',s,p)=ETF150(p,s);
ScenarioReturnP('FXA',s,p)=ETF151(p,s);
ScenarioReturnP('FXB',s,p)=ETF152(p,s);
ScenarioReturnP('FXC',s,p)=ETF153(p,s);
ScenarioReturnP('FXD',s,p)=ETF154(p,s);
ScenarioReturnP('FXE',s,p)=ETF155(p,s);
ScenarioReturnP('FXF',s,p)=ETF156(p,s);
ScenarioReturnP('FXG',s,p)=ETF157(p,s);
ScenarioReturnP('FXH',s,p)=ETF158(p,s);
ScenarioReturnP('FXL',s,p)=ETF159(p,s);
ScenarioReturnP('FXN',s,p)=ETF160(p,s);
ScenarioReturnP('FXO',s,p)=ETF161(p,s);
ScenarioReturnP('FXR',s,p)=ETF162(p,s);
ScenarioReturnP('FXU',s,p)=ETF163(p,s);
ScenarioReturnP('FXY',s,p)=ETF164(p,s);
ScenarioReturnP('FXZ',s,p)=ETF165(p,s);
ScenarioReturnP('FYX',s,p)=ETF166(p,s);
ScenarioReturnP('GBF',s,p)=ETF167(p,s);
ScenarioReturnP('GDX',s,p)=ETF168(p,s);
ScenarioReturnP('GDXJ',s,p)=ETF169(p,s);
ScenarioReturnP('GLD',s,p)=ETF170(p,s);
ScenarioReturnP('GLTR',s,p)=ETF171(p,s);
ScenarioReturnP('GMF',s,p)=ETF172(p,s);
ScenarioReturnP('GNMA',s,p)=ETF173(p,s);
ScenarioReturnP('GNR',s,p)=ETF174(p,s);
ScenarioReturnP('GOVT',s,p)=ETF175(p,s);
ScenarioReturnP('GREK',s,p)=ETF176(p,s);
ScenarioReturnP('GSG',s,p)=ETF177(p,s);
ScenarioReturnP('GSY',s,p)=ETF178(p,s);
ScenarioReturnP('GUNR',s,p)=ETF179(p,s);
ScenarioReturnP('GVI',s,p)=ETF180(p,s);
ScenarioReturnP('GWX',s,p)=ETF181(p,s);
ScenarioReturnP('GXC',s,p)=ETF182(p,s);
ScenarioReturnP('HDV',s,p)=ETF183(p,s);
ScenarioReturnP('HEDJ',s,p)=ETF184(p,s);
ScenarioReturnP('HEFA',s,p)=ETF185(p,s);
ScenarioReturnP('HEWG',s,p)=ETF186(p,s);
ScenarioReturnP('HEWJ',s,p)=ETF187(p,s);
ScenarioReturnP('HEZU',s,p)=ETF188(p,s);
ScenarioReturnP('HYD',s,p)=ETF189(p,s);
ScenarioReturnP('HYEM',s,p)=ETF190(p,s);
ScenarioReturnP('HYG',s,p)=ETF191(p,s);
ScenarioReturnP('HYMB',s,p)=ETF192(p,s);
ScenarioReturnP('HYS',s,p)=ETF193(p,s);
ScenarioReturnP('IAI',s,p)=ETF194(p,s);
ScenarioReturnP('IAT',s,p)=ETF195(p,s);
ScenarioReturnP('IAU',s,p)=ETF196(p,s);
ScenarioReturnP('IBB',s,p)=ETF197(p,s);
ScenarioReturnP('IBND',s,p)=ETF198(p,s);
ScenarioReturnP('ICF',s,p)=ETF199(p,s);
ScenarioReturnP('IDLV',s,p)=ETF200(p,s);
ScenarioReturnP('IDU',s,p)=ETF201(p,s);
ScenarioReturnP('IDV',s,p)=ETF202(p,s);
ScenarioReturnP('IDX',s,p)=ETF203(p,s);
ScenarioReturnP('IEF',s,p)=ETF204(p,s);
ScenarioReturnP('IEFA',s,p)=ETF205(p,s);
ScenarioReturnP('IEI',s,p)=ETF206(p,s);
ScenarioReturnP('IEMG',s,p)=ETF207(p,s);
ScenarioReturnP('IEO',s,p)=ETF208(p,s);
ScenarioReturnP('IEUR',s,p)=ETF209(p,s);
ScenarioReturnP('IEV',s,p)=ETF210(p,s);
ScenarioReturnP('IEZ',s,p)=ETF211(p,s);
ScenarioReturnP('IFGL',s,p)=ETF212(p,s);
ScenarioReturnP('IGE',s,p)=ETF213(p,s);
ScenarioReturnP('IGF',s,p)=ETF214(p,s);
ScenarioReturnP('IGM',s,p)=ETF215(p,s);
ScenarioReturnP('IGN',s,p)=ETF216(p,s);
ScenarioReturnP('IGOV',s,p)=ETF217(p,s);
ScenarioReturnP('IGV',s,p)=ETF218(p,s);
ScenarioReturnP('IHDG',s,p)=ETF219(p,s);
ScenarioReturnP('IHE',s,p)=ETF220(p,s);
ScenarioReturnP('IHF',s,p)=ETF221(p,s);
ScenarioReturnP('IHI',s,p)=ETF222(p,s);
ScenarioReturnP('IJH',s,p)=ETF223(p,s);
ScenarioReturnP('IJJ',s,p)=ETF224(p,s);
ScenarioReturnP('IJK',s,p)=ETF225(p,s);
ScenarioReturnP('IJR',s,p)=ETF226(p,s);
ScenarioReturnP('IJS',s,p)=ETF227(p,s);
ScenarioReturnP('IJT',s,p)=ETF228(p,s);
ScenarioReturnP('ILF',s,p)=ETF229(p,s);
ScenarioReturnP('ILTB',s,p)=ETF230(p,s);
ScenarioReturnP('INDA',s,p)=ETF231(p,s);
ScenarioReturnP('IOO',s,p)=ETF232(p,s);
ScenarioReturnP('IPAC',s,p)=ETF233(p,s);
ScenarioReturnP('IPE',s,p)=ETF234(p,s);
ScenarioReturnP('IPFF',s,p)=ETF235(p,s);
ScenarioReturnP('IQDF',s,p)=ETF236(p,s);
ScenarioReturnP('ISTB',s,p)=ETF237(p,s);
ScenarioReturnP('ITA',s,p)=ETF238(p,s);
ScenarioReturnP('ITB',s,p)=ETF239(p,s);
ScenarioReturnP('ITE',s,p)=ETF240(p,s);
ScenarioReturnP('ITM',s,p)=ETF241(p,s);
ScenarioReturnP('ITOT',s,p)=ETF242(p,s);
ScenarioReturnP('IUSB',s,p)=ETF243(p,s);
ScenarioReturnP('IUSG',s,p)=ETF244(p,s);
ScenarioReturnP('IUSV',s,p)=ETF245(p,s);
ScenarioReturnP('IVE',s,p)=ETF246(p,s);
ScenarioReturnP('IVOG',s,p)=ETF247(p,s);
ScenarioReturnP('IVOO',s,p)=ETF248(p,s);
ScenarioReturnP('IVOV',s,p)=ETF249(p,s);
ScenarioReturnP('IVV',s,p)=ETF250(p,s);
ScenarioReturnP('IVW',s,p)=ETF251(p,s);
ScenarioReturnP('IWB',s,p)=ETF252(p,s);
ScenarioReturnP('IWC',s,p)=ETF253(p,s);
ScenarioReturnP('IWD',s,p)=ETF254(p,s);
ScenarioReturnP('IWF',s,p)=ETF255(p,s);
ScenarioReturnP('IWM',s,p)=ETF256(p,s);
ScenarioReturnP('IWN',s,p)=ETF257(p,s);
ScenarioReturnP('IWO',s,p)=ETF258(p,s);
ScenarioReturnP('IWP',s,p)=ETF259(p,s);
ScenarioReturnP('IWR',s,p)=ETF260(p,s);
ScenarioReturnP('IWV',s,p)=ETF261(p,s);
ScenarioReturnP('IWY',s,p)=ETF262(p,s);
ScenarioReturnP('IXC',s,p)=ETF263(p,s);
ScenarioReturnP('IXG',s,p)=ETF264(p,s);
ScenarioReturnP('IXJ',s,p)=ETF265(p,s);
ScenarioReturnP('IXN',s,p)=ETF266(p,s);
ScenarioReturnP('IXP',s,p)=ETF267(p,s);
ScenarioReturnP('IXUS',s,p)=ETF268(p,s);
ScenarioReturnP('IYC',s,p)=ETF269(p,s);
ScenarioReturnP('IYE',s,p)=ETF270(p,s);
ScenarioReturnP('IYF',s,p)=ETF271(p,s);
ScenarioReturnP('IYG',s,p)=ETF272(p,s);
ScenarioReturnP('IYH',s,p)=ETF273(p,s);
ScenarioReturnP('IYJ',s,p)=ETF274(p,s);
ScenarioReturnP('IYK',s,p)=ETF275(p,s);
ScenarioReturnP('IYM',s,p)=ETF276(p,s);
ScenarioReturnP('IYR',s,p)=ETF277(p,s);
ScenarioReturnP('IYT',s,p)=ETF278(p,s);
ScenarioReturnP('IYW',s,p)=ETF279(p,s);
ScenarioReturnP('IYY',s,p)=ETF280(p,s);
ScenarioReturnP('IYZ',s,p)=ETF281(p,s);
ScenarioReturnP('JKD',s,p)=ETF282(p,s);
ScenarioReturnP('JKE',s,p)=ETF283(p,s);
ScenarioReturnP('JKG',s,p)=ETF284(p,s);
ScenarioReturnP('JNK',s,p)=ETF285(p,s);
ScenarioReturnP('JPXN',s,p)=ETF286(p,s);
ScenarioReturnP('JXI',s,p)=ETF287(p,s);
ScenarioReturnP('KBE',s,p)=ETF288(p,s);
ScenarioReturnP('KBWB',s,p)=ETF289(p,s);
ScenarioReturnP('KBWP',s,p)=ETF290(p,s);
ScenarioReturnP('KCE',s,p)=ETF291(p,s);
ScenarioReturnP('KIE',s,p)=ETF292(p,s);
ScenarioReturnP('KOL',s,p)=ETF293(p,s);
ScenarioReturnP('KRE',s,p)=ETF294(p,s);
ScenarioReturnP('KXI',s,p)=ETF295(p,s);
ScenarioReturnP('LEMB',s,p)=ETF296(p,s);
ScenarioReturnP('LQD',s,p)=ETF297(p,s);
ScenarioReturnP('LTPZ',s,p)=ETF298(p,s);
ScenarioReturnP('MBB',s,p)=ETF299(p,s);
ScenarioReturnP('MCHI',s,p)=ETF300(p,s);
ScenarioReturnP('MDIV',s,p)=ETF301(p,s);
ScenarioReturnP('MDY',s,p)=ETF302(p,s);
ScenarioReturnP('MDYG',s,p)=ETF303(p,s);
ScenarioReturnP('MDYV',s,p)=ETF304(p,s);
ScenarioReturnP('MGC',s,p)=ETF305(p,s);
ScenarioReturnP('MGK',s,p)=ETF306(p,s);
ScenarioReturnP('MGV',s,p)=ETF307(p,s);
ScenarioReturnP('MINT',s,p)=ETF308(p,s);
ScenarioReturnP('MLPA',s,p)=ETF309(p,s);
ScenarioReturnP('MOAT',s,p)=ETF310(p,s);
ScenarioReturnP('MOO',s,p)=ETF311(p,s);
ScenarioReturnP('MTUM',s,p)=ETF312(p,s);
ScenarioReturnP('MUB',s,p)=ETF313(p,s);
ScenarioReturnP('MUNI',s,p)=ETF314(p,s);
ScenarioReturnP('MXI',s,p)=ETF315(p,s);
ScenarioReturnP('NFRA',s,p)=ETF316(p,s);
ScenarioReturnP('NOBL',s,p)=ETF317(p,s);
ScenarioReturnP('OEF',s,p)=ETF318(p,s);
ScenarioReturnP('OIH',s,p)=ETF319(p,s);
ScenarioReturnP('ONEQ',s,p)=ETF320(p,s);
ScenarioReturnP('PALL',s,p)=ETF321(p,s);
ScenarioReturnP('PBE',s,p)=ETF322(p,s);
ScenarioReturnP('PBJ',s,p)=ETF323(p,s);
ScenarioReturnP('PCY',s,p)=ETF324(p,s);
ScenarioReturnP('PDP',s,p)=ETF325(p,s);
ScenarioReturnP('PEY',s,p)=ETF326(p,s);
ScenarioReturnP('PFF',s,p)=ETF327(p,s);
ScenarioReturnP('PFXF',s,p)=ETF328(p,s);
ScenarioReturnP('PGF',s,p)=ETF329(p,s);
ScenarioReturnP('PGX',s,p)=ETF330(p,s);
ScenarioReturnP('PHB',s,p)=ETF331(p,s);
ScenarioReturnP('PHO',s,p)=ETF332(p,s);
ScenarioReturnP('PICB',s,p)=ETF333(p,s);
ScenarioReturnP('PICK',s,p)=ETF334(p,s);
ScenarioReturnP('PID',s,p)=ETF335(p,s);
ScenarioReturnP('PJP',s,p)=ETF336(p,s);
ScenarioReturnP('PKW',s,p)=ETF337(p,s);
ScenarioReturnP('PLW',s,p)=ETF338(p,s);
ScenarioReturnP('PNQI',s,p)=ETF339(p,s);
ScenarioReturnP('PPA',s,p)=ETF340(p,s);
ScenarioReturnP('PPH',s,p)=ETF341(p,s);
ScenarioReturnP('PPLT',s,p)=ETF342(p,s);
ScenarioReturnP('PRF',s,p)=ETF343(p,s);
ScenarioReturnP('PRFZ',s,p)=ETF344(p,s);
ScenarioReturnP('PSCC',s,p)=ETF345(p,s);
ScenarioReturnP('PSCT',s,p)=ETF346(p,s);
ScenarioReturnP('PSCU',s,p)=ETF347(p,s);
ScenarioReturnP('PSI',s,p)=ETF348(p,s);
ScenarioReturnP('PSK',s,p)=ETF349(p,s);
ScenarioReturnP('PSL',s,p)=ETF350(p,s);
ScenarioReturnP('PUI',s,p)=ETF351(p,s);
ScenarioReturnP('PWB',s,p)=ETF352(p,s);
ScenarioReturnP('PWV',s,p)=ETF353(p,s);
ScenarioReturnP('PWZ',s,p)=ETF354(p,s);
ScenarioReturnP('PXF',s,p)=ETF355(p,s);
ScenarioReturnP('PXH',s,p)=ETF356(p,s);
ScenarioReturnP('PZA',s,p)=ETF357(p,s);
ScenarioReturnP('QDF',s,p)=ETF358(p,s);
ScenarioReturnP('QQEW',s,p)=ETF359(p,s);
ScenarioReturnP('QQQ',s,p)=ETF360(p,s);
ScenarioReturnP('QTEC',s,p)=ETF361(p,s);
ScenarioReturnP('QUAL',s,p)=ETF362(p,s);
ScenarioReturnP('RDIV',s,p)=ETF363(p,s);
ScenarioReturnP('REET',s,p)=ETF364(p,s);
ScenarioReturnP('REM',s,p)=ETF365(p,s);
ScenarioReturnP('REZ',s,p)=ETF366(p,s);
ScenarioReturnP('RFG',s,p)=ETF367(p,s);
ScenarioReturnP('RGI',s,p)=ETF368(p,s);
ScenarioReturnP('RHS',s,p)=ETF369(p,s);
ScenarioReturnP('RING',s,p)=ETF370(p,s);
ScenarioReturnP('RPG',s,p)=ETF371(p,s);
ScenarioReturnP('RPV',s,p)=ETF372(p,s);
ScenarioReturnP('RSP',s,p)=ETF373(p,s);
ScenarioReturnP('RSX',s,p)=ETF374(p,s);
ScenarioReturnP('RTH',s,p)=ETF375(p,s);
ScenarioReturnP('RWJ',s,p)=ETF376(p,s);
ScenarioReturnP('RWL',s,p)=ETF377(p,s);
ScenarioReturnP('RWO',s,p)=ETF378(p,s);
ScenarioReturnP('RWR',s,p)=ETF379(p,s);
ScenarioReturnP('RWX',s,p)=ETF380(p,s);
ScenarioReturnP('RXI',s,p)=ETF381(p,s);
ScenarioReturnP('RYE',s,p)=ETF382(p,s);
ScenarioReturnP('RYF',s,p)=ETF383(p,s);
ScenarioReturnP('RYH',s,p)=ETF384(p,s);
ScenarioReturnP('RYT',s,p)=ETF385(p,s);
ScenarioReturnP('RYU',s,p)=ETF386(p,s);
ScenarioReturnP('SCHA',s,p)=ETF387(p,s);
ScenarioReturnP('SCHB',s,p)=ETF388(p,s);
ScenarioReturnP('SCHC',s,p)=ETF389(p,s);
ScenarioReturnP('SCHD',s,p)=ETF390(p,s);
ScenarioReturnP('SCHE',s,p)=ETF391(p,s);
ScenarioReturnP('SCHF',s,p)=ETF392(p,s);
ScenarioReturnP('SCHG',s,p)=ETF393(p,s);
ScenarioReturnP('SCHH',s,p)=ETF394(p,s);
ScenarioReturnP('SCHM',s,p)=ETF395(p,s);
ScenarioReturnP('SCHO',s,p)=ETF396(p,s);
ScenarioReturnP('SCHP',s,p)=ETF397(p,s);
ScenarioReturnP('SCHR',s,p)=ETF398(p,s);
ScenarioReturnP('SCHV',s,p)=ETF399(p,s);
ScenarioReturnP('SCHX',s,p)=ETF400(p,s);
ScenarioReturnP('SCHZ',s,p)=ETF401(p,s);
ScenarioReturnP('SCJ',s,p)=ETF402(p,s);
ScenarioReturnP('SCZ',s,p)=ETF403(p,s);
ScenarioReturnP('SDIV',s,p)=ETF404(p,s);
ScenarioReturnP('SDOG',s,p)=ETF405(p,s);
ScenarioReturnP('SDY',s,p)=ETF406(p,s);
ScenarioReturnP('SGDM',s,p)=ETF407(p,s);
ScenarioReturnP('SGOL',s,p)=ETF408(p,s);
ScenarioReturnP('SHM',s,p)=ETF409(p,s);
ScenarioReturnP('SHV',s,p)=ETF410(p,s);
ScenarioReturnP('SHY',s,p)=ETF411(p,s);
ScenarioReturnP('SHYG',s,p)=ETF412(p,s);
ScenarioReturnP('SIL',s,p)=ETF413(p,s);
ScenarioReturnP('SILJ',s,p)=ETF414(p,s);
ScenarioReturnP('SIVR',s,p)=ETF415(p,s);
ScenarioReturnP('SIZE',s,p)=ETF416(p,s);
ScenarioReturnP('SJNK',s,p)=ETF417(p,s);
ScenarioReturnP('SKYY',s,p)=ETF418(p,s);
ScenarioReturnP('SLQD',s,p)=ETF419(p,s);
ScenarioReturnP('SLV',s,p)=ETF420(p,s);
ScenarioReturnP('SLVP',s,p)=ETF421(p,s);
ScenarioReturnP('SLX',s,p)=ETF422(p,s);
ScenarioReturnP('SLY',s,p)=ETF423(p,s);
ScenarioReturnP('SLYG',s,p)=ETF424(p,s);
ScenarioReturnP('SLYV',s,p)=ETF425(p,s);
ScenarioReturnP('SMH',s,p)=ETF426(p,s);
ScenarioReturnP('SMLV',s,p)=ETF427(p,s);
ScenarioReturnP('SNLN',s,p)=ETF428(p,s);
ScenarioReturnP('SOCL',s,p)=ETF429(p,s);
ScenarioReturnP('SOXX',s,p)=ETF430(p,s);
ScenarioReturnP('SPFF',s,p)=ETF431(p,s);
ScenarioReturnP('SPHB',s,p)=ETF432(p,s);
ScenarioReturnP('SPHD',s,p)=ETF433(p,s);
ScenarioReturnP('SPHQ',s,p)=ETF434(p,s);
ScenarioReturnP('SPLV',s,p)=ETF435(p,s);
ScenarioReturnP('SPY',s,p)=ETF436(p,s);
ScenarioReturnP('SPYG',s,p)=ETF437(p,s);
ScenarioReturnP('SRLN',s,p)=ETF438(p,s);
ScenarioReturnP('STIP',s,p)=ETF439(p,s);
ScenarioReturnP('STPZ',s,p)=ETF440(p,s);
ScenarioReturnP('SUB',s,p)=ETF441(p,s);
ScenarioReturnP('TAN',s,p)=ETF442(p,s);
ScenarioReturnP('TDIV',s,p)=ETF443(p,s);
ScenarioReturnP('TDTF',s,p)=ETF444(p,s);
ScenarioReturnP('TDTT',s,p)=ETF445(p,s);
ScenarioReturnP('TFI',s,p)=ETF446(p,s);
ScenarioReturnP('THD',s,p)=ETF447(p,s);
ScenarioReturnP('TILT',s,p)=ETF448(p,s);
ScenarioReturnP('TIP',s,p)=ETF449(p,s);
ScenarioReturnP('TLH',s,p)=ETF450(p,s);
ScenarioReturnP('TLT',s,p)=ETF451(p,s);
ScenarioReturnP('TLTD',s,p)=ETF452(p,s);
ScenarioReturnP('TOK',s,p)=ETF453(p,s);
ScenarioReturnP('TUR',s,p)=ETF454(p,s);
ScenarioReturnP('UGA',s,p)=ETF455(p,s);
ScenarioReturnP('URA',s,p)=ETF456(p,s);
ScenarioReturnP('URTH',s,p)=ETF457(p,s);
ScenarioReturnP('USDU',s,p)=ETF458(p,s);
ScenarioReturnP('USMV',s,p)=ETF459(p,s);
ScenarioReturnP('UUP',s,p)=ETF460(p,s);
ScenarioReturnP('VAW',s,p)=ETF461(p,s);
ScenarioReturnP('VB',s,p)=ETF462(p,s);
ScenarioReturnP('VBK',s,p)=ETF463(p,s);
ScenarioReturnP('VBR',s,p)=ETF464(p,s);
ScenarioReturnP('VCIT',s,p)=ETF465(p,s);
ScenarioReturnP('VCLT',s,p)=ETF466(p,s);
ScenarioReturnP('VCR',s,p)=ETF467(p,s);
ScenarioReturnP('VCSH',s,p)=ETF468(p,s);
ScenarioReturnP('VDC',s,p)=ETF469(p,s);
ScenarioReturnP('VDE',s,p)=ETF470(p,s);
ScenarioReturnP('VEA',s,p)=ETF471(p,s);
ScenarioReturnP('VEU',s,p)=ETF472(p,s);
ScenarioReturnP('VFH',s,p)=ETF473(p,s);
ScenarioReturnP('VGIT',s,p)=ETF474(p,s);
ScenarioReturnP('VGK',s,p)=ETF475(p,s);
ScenarioReturnP('VGLT',s,p)=ETF476(p,s);
ScenarioReturnP('VGSH',s,p)=ETF477(p,s);
ScenarioReturnP('VGT',s,p)=ETF478(p,s);
ScenarioReturnP('VHT',s,p)=ETF479(p,s);
ScenarioReturnP('VIG',s,p)=ETF480(p,s);
ScenarioReturnP('VIOO',s,p)=ETF481(p,s);
ScenarioReturnP('VIS',s,p)=ETF482(p,s);
ScenarioReturnP('VLUE',s,p)=ETF483(p,s);
ScenarioReturnP('VMBS',s,p)=ETF484(p,s);
ScenarioReturnP('VNM',s,p)=ETF485(p,s);
ScenarioReturnP('VNQ',s,p)=ETF486(p,s);
ScenarioReturnP('VNQI',s,p)=ETF487(p,s);
ScenarioReturnP('VO',s,p)=ETF488(p,s);
ScenarioReturnP('VOE',s,p)=ETF489(p,s);
ScenarioReturnP('VONE',s,p)=ETF490(p,s);
ScenarioReturnP('VONG',s,p)=ETF491(p,s);
ScenarioReturnP('VONV',s,p)=ETF492(p,s);
ScenarioReturnP('VOO',s,p)=ETF493(p,s);
ScenarioReturnP('VOOG',s,p)=ETF494(p,s);
ScenarioReturnP('VOOV',s,p)=ETF495(p,s);
ScenarioReturnP('VOT',s,p)=ETF496(p,s);
ScenarioReturnP('VOX',s,p)=ETF497(p,s);
ScenarioReturnP('VPL',s,p)=ETF498(p,s);
ScenarioReturnP('VPU',s,p)=ETF499(p,s);
ScenarioReturnP('VRP',s,p)=ETF500(p,s);
ScenarioReturnP('VSS',s,p)=ETF501(p,s);
ScenarioReturnP('VT',s,p)=ETF502(p,s);
ScenarioReturnP('VTI',s,p)=ETF503(p,s);
ScenarioReturnP('VTIP',s,p)=ETF504(p,s);
ScenarioReturnP('VTV',s,p)=ETF505(p,s);
ScenarioReturnP('VTWO',s,p)=ETF506(p,s);
ScenarioReturnP('VUG',s,p)=ETF507(p,s);
ScenarioReturnP('VV',s,p)=ETF508(p,s);
ScenarioReturnP('VWO',s,p)=ETF509(p,s);
ScenarioReturnP('VWOB',s,p)=ETF510(p,s);
ScenarioReturnP('VXF',s,p)=ETF511(p,s);
ScenarioReturnP('VXUS',s,p)=ETF512(p,s);
ScenarioReturnP('VYM',s,p)=ETF513(p,s);
ScenarioReturnP('WIP',s,p)=ETF514(p,s);
ScenarioReturnP('XBI',s,p)=ETF515(p,s);
ScenarioReturnP('XES',s,p)=ETF516(p,s);
ScenarioReturnP('XHB',s,p)=ETF517(p,s);
ScenarioReturnP('XHS',s,p)=ETF518(p,s);
ScenarioReturnP('XLB',s,p)=ETF519(p,s);
ScenarioReturnP('XLE',s,p)=ETF520(p,s);
ScenarioReturnP('XLF',s,p)=ETF521(p,s);
ScenarioReturnP('XLG',s,p)=ETF522(p,s);
ScenarioReturnP('XLI',s,p)=ETF523(p,s);
ScenarioReturnP('XLK',s,p)=ETF524(p,s);
ScenarioReturnP('XLP',s,p)=ETF525(p,s);
ScenarioReturnP('XLU',s,p)=ETF526(p,s);
ScenarioReturnP('XLV',s,p)=ETF527(p,s);
ScenarioReturnP('XLY',s,p)=ETF528(p,s);
ScenarioReturnP('XME',s,p)=ETF529(p,s);
ScenarioReturnP('XMLV',s,p)=ETF530(p,s);
ScenarioReturnP('XOP',s,p)=ETF531(p,s);
ScenarioReturnP('XPH',s,p)=ETF532(p,s);
ScenarioReturnP('XRT',s,p)=ETF533(p,s);
ScenarioReturnP('XSD',s,p)=ETF534(p,s);
ScenarioReturnP('XSLV',s,p)=ETF535(p,s);
ScenarioReturnP('XTN',s,p)=ETF536(p,s);
ScenarioReturnP('ZROZ',s,p)=ETF537(p,s);

Execute_unload 'MCscenarios70.gdx', ScenarioReturnP, Asset, Scenarios, Periods;


