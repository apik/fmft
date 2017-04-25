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

By default distributed with package and loaded automaticaly tables for irreducible scalar products up to weight 10. If higher power of irreducible scalar prodocts need to be reduced additional tables can be downloaded:

[Tables for irreducible scalar products with powers from 11 to 20](https://dl.bintray.com/apik/FMFT/)

To start using them simply unpack archives into directory `isp` and before including `fmft.hh` define new maximal rank of tensor structures in numerator with directive `#define SPMAXRANK "<WEIGHT>"`, where WEIGHT is a maximal weight of tables you want to load.
