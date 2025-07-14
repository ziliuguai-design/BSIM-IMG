*************
.param    tranMin = 1us  *仿真精度
.param    tranMax = 100us  *最大仿真时长

.option post 
.temp  25

.hdl "bsimimg.va"
.include "modelcard.nmos"
  
v1 supply 0 0.05
v2 fg  0  pwl(0s -1v 100us 2v)
v3 bg 0 0

X0   supply  fg  0  bg qin nmos1   L=100n W=500n  NF=60  

.tran tranMin tranMax
.print tran par'-i(v1)'
.end