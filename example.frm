#-
#include fmft.hh
* Optional loading reduction tables for G integrals
#call FillGtab

L ex = p2.p3/d1/d2^2/d4/d5/d6/d7/d8/d9;

#call fmft
#call exp4d(1)

b ep;
Print+s;
.end

