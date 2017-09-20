#-
Off statistics;
#include fmft.hh

CF fmftint;

#define EXITCODE "0"

#do tstnum={10,13,31}

L tst`tstnum' = 
#include `NAME_' # inp`tstnum'
;        

id fmftint(n1?, n2?, n3?, n4?, n5?, n6?, n7?, n8?, n9?, n10?) = 1/d1^n1/d2^n2/d3^n3/d4^n4/d5^n5/d6^n6/d7^n7/d8^n8/d9^n9/d10^n10;

Print+s tst`tstnum';
.sort

#call fmft
* Multiply replace_(tmm,1);

.sort
hide tst`tstnum';

L res`tstnum' = 
#include `NAME_' # res`tstnum'
;

.sort
#write <out-new> "`tstnum'\n %E",res`tstnum'
.sort

L diff`tstnum' = tst`tstnum' - res`tstnum';

* Print diff`tstnum';
.sort
drop tst`tstnum';        
drop res`tstnum';        
hide diff`tstnum';

.sort:test case no.`tstnum';

#if(termsin(diff`tstnum') > 0)
        #message Test `tstnum' failed
        #redefine EXITCODE "1"        
#endif

#enddo
.sort

#message EXITCODE = `EXITCODE'

unhide;

Print+s;
.sort
#terminate `EXITCODE'
.end


*******************************************************************************
*
*                             Main tests code
*
*--#[ inp10 :
fmftint(-2, 2, 1, 1, 1, 1, 1, 1, 2, 0)
*--#] inp10 :
*--#[ res10 :
 PR11d*rat(6*d^2 - 56*d + 128,3*d - 15) + PR11*rat( - 5*d^3 + 73*d^2 - 344*d
       + 528,12*d - 60) + PR10*rat( - 10*d^3 + 120*d^2 - 486*d + 648,27*d - 
      135) + PR9d*rat(165*d^2 - 1282*d + 2454,6*d - 30) + PR9*rat( - 36*d^3 + 
      438*d^2 - 1763*d + 2348,6*d - 30) + PR8*rat( - d^3 + 8*d^2 + 51*d - 198,
      54*d - 270) + PR7*rat( - 29019*d^4 + 413105*d^3 - 2187116*d^2 + 5099196*
      d - 4411296,1728*d^2 - 15552*d + 34560) + PR6*rat(143*d^3 - 1360*d^2 + 
      4119*d - 3942,54*d - 270) + PR5*rat(690*d^4 - 9927*d^3 + 53236*d^2 - 
      126157*d + 111486,54*d^2 - 468*d + 990) + PR4d*rat(49549*d^4 - 841308*
      d^3 + 5320223*d^2 - 14841540*d + 15399900,1728*d^4 - 29376*d^3 + 184896*
      d^2 - 509760*d + 518400) + PR4*rat( - 52292*d^6 + 1172896*d^5 - 10870123
      *d^4 + 53277372*d^3 - 145616437*d^2 + 210346260*d - 125381700,8640*d^4
       - 146880*d^3 + 924480*d^2 - 2548800*d + 2592000) + PR3*rat(10769*d^6 - 
      220232*d^5 + 1837263*d^4 - 7989592*d^3 + 19065208*d^2 - 23627232*d + 
      11872368,3456*d^4 - 58752*d^3 + 369792*d^2 - 1019520*d + 1036800) + PR2*
      rat(9441*d^5 - 152160*d^4 + 968003*d^3 - 3032544*d^2 + 4666900*d - 
      2815200,5184*d^3 - 65664*d^2 + 274752*d - 380160) + PR1*rat( - 111*d^6
       + 1886*d^5 - 12895*d^4 + 45480*d^3 - 87640*d^2 + 87872*d - 35952,864*
      d^4 - 15264*d^3 + 100512*d^2 - 292320*d + 316800)
*--#] res10 :

*--#[ inp13 :
fmftint(-2, 3, 0, 1, 1, 1, 1, 1, 2, 0)
*--#] inp13 :
*--#[ res13 :
 PR10*rat(d^3 + 7*d^2 - 78*d + 144,216) + PR8*rat(d^3 - 17*d^2 + 66*d - 72,72)
       + PR7*rat(27*d^4 + 160*d^3 - 2229*d^2 + 6230*d - 5712,3456*d - 13824)
       + PR6*rat(13*d^3 - 70*d^2 + 112*d - 48,432) + PR4d*rat( - 5873*d^3 + 
      96660*d^2 - 469369*d + 711138,17280*d^2 - 120960*d + 207360) + PR4*rat(
      2164*d^5 - 53456*d^4 + 491087*d^3 - 2128092*d^2 + 4392611*d - 3477390,
      86400*d^2 - 604800*d + 1036800) + PR3*rat(703*d^5 - 12112*d^4 + 79731*
      d^3 - 253394*d^2 + 391604*d - 236184,6912*d^2 - 48384*d + 82944) + PR2*
      rat( - 63*d^4 + 221*d^3 + 356*d^2 - 1460*d + 736,6912*d - 27648) + PR1*
      rat(77*d^4 - 712*d^3 + 2424*d^2 - 3616*d + 2000,1152*d - 4608)
*--#] res13 :

*--#[ inp31 :
fmftint(-1, 1, 1, 1, 1, 1, 1, 1, 3, 0)
*--#] inp31 :
*--#[ res31 :
 PR11d*rat(3*d - 14,12) + PR11*rat( - d^2 + 10*d - 24,24) + PR10*rat( - 2*d + 
      6,9) + PR9d*rat( - 135*d^2 + 1102*d - 2196,24*d - 120) + PR9*rat(33*d^3
       - 412*d^2 + 1698*d - 2312,24*d - 120) + PR8*rat( - d^3 + 8*d^2 - 21*d
       + 18,36*d - 180) + PR7*rat(4026*d^4 - 59105*d^3 + 321419*d^2 - 766846*d
       + 676496,1152*d^2 - 10368*d + 23040) + PR6*rat( - 35*d^3 + 355*d^2 - 
      1132*d + 1124,72*d - 360) + PR5*rat( - 285*d^4 + 4227*d^3 - 23287*d^2 + 
      56525*d - 51036,108*d^2 - 936*d + 1980) + PR4d*rat( - 6246*d^4 + 107677*
      d^3 - 691972*d^2 + 1963115*d - 2072950,1152*d^4 - 19584*d^3 + 123264*d^2
       - 339840*d + 345600) + PR4*rat(19656*d^6 - 449052*d^5 + 4232454*d^4 - 
      21066049*d^3 + 58388404*d^2 - 85419675*d + 51502350,17280*d^4 - 293760*
      d^3 + 1848960*d^2 - 5097600*d + 5184000) + PR3*rat( - 1310*d^6 + 27305*
      d^5 - 231976*d^4 + 1026155*d^3 - 2487202*d^2 + 3125300*d - 1589336,2304*
      d^4 - 39168*d^3 + 246528*d^2 - 679680*d + 691200) + PR2*rat( - 81*d^5 + 
      1341*d^4 - 8748*d^3 + 28039*d^2 - 44030*d + 27024,216*d^3 - 2736*d^2 + 
      11448*d - 15840) + PR1*rat(9*d^6 - 150*d^5 + 1009*d^4 - 3512*d^3 + 6696*
      d^2 - 6656*d + 2704,216*d^4 - 3816*d^3 + 25128*d^2 - 73080*d + 79200)
*--#] res31 :