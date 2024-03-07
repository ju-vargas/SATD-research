```comb_precise.v``` instancia os outros módulos
```/aprox-3```contém outro .v que instancia modulos aproximados da transformada

##Preciso

```
1. Slice Logic
--------------

+-------------------------+-------+-------+-----------+--------+
|        Site Type        |  Used | Fixed | Available |  Util% |
+-------------------------+-------+-------+-----------+--------+
| Slice LUTs*             | 21785 |     0 |     20800 | 104.74 |
|   LUT as Logic          | 21785 |     0 |     20800 | 104.74 |
|   LUT as Memory         |     0 |     0 |      9600 |   0.00 |
| Slice Registers         |    59 |     0 |     41600 |   0.14 |
|   Register as Flip Flop |    59 |     0 |     41600 |   0.14 |
|   Register as Latch     |     0 |     0 |     41600 |   0.00 |
| F7 Muxes                |     0 |     0 |     16300 |   0.00 |
| F8 Muxes                |     0 |     0 |      8150 |   0.00 |
+-------------------------+-------+-------+-----------+--------+
```

##Aproximado

```
1. Slice Logic
--------------

+-------------------------+-------+-------+-----------+-------+
|        Site Type        |  Used | Fixed | Available | Util% |
+-------------------------+-------+-------+-----------+-------+
| Slice LUTs*             | 10890 |     0 |     20800 | 52.36 |
|   LUT as Logic          | 10890 |     0 |     20800 | 52.36 |
|   LUT as Memory         |     0 |     0 |      9600 |  0.00 |
| Slice Registers         |    40 |     0 |     41600 |  0.10 |
|   Register as Flip Flop |    40 |     0 |     41600 |  0.10 |
|   Register as Latch     |     0 |     0 |     41600 |  0.00 |
| F7 Muxes                |     0 |     0 |     16300 |  0.00 |
| F8 Muxes                |     0 |     0 |      8150 |  0.00 |
+-------------------------+-------+-------+-----------+-------+
```
