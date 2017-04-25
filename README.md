## Basic topologies

![FMFT topologies](https://raw.githubusercontent.com/wiki/apik/fmft/topo.png)

## Input and examples

For input we use `d1,...,d10` as massive denominators according to topologies `H` and `X` defined as `d_i=p_i^2-m^2`


```
#-
#include fmft.hh

L ex = p2.p3*p2.p2/d1^-2/d2^2/d3^0/d4^1/d5^1/d6^1/d7^1/d8^1/d9^3/d10^0;

#call fmft
#call exp4d(1)

b ep;
Print+s;
.end
```
## Tables

[Tables for irreducible scalar products with powers from 11 to 20](https://dl.bintray.com/apik/FMFT/)
