> library("Benchmarking")
Carregando pacotes exigidos: lpSolveAPI
Carregando pacotes exigidos: ucminf
Carregando pacotes exigidos: quadprog

Loading Benchmarking version 0.32h (Revision 263, 2024/03/13 15:04:04) ...
Build 2024/03/13 15:05:00
> library(deaR)

Anexando pacote: ‘deaR’

O seguinte objeto é mascarado por ‘package:Benchmarking’:
  
  efficiencies

> library(readxl)
> library(additiveDEA)
> library(MultiplierDEA)

Restarting R session...

> install.packages("rio")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Instalando pacote em ‘C:/Users/Helloisa/AppData/Local/R/win-library/4.4’
(como ‘lib’ não foi especificado)
tentando a URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/rio_1.2.3.zip'
Content type 'application/zip' length 623558 bytes (608 KB)
downloaded 608 KB

pacote ‘rio’ desempacotado com sucesso e somas MD5 verificadas

Os pacotes binários baixados estão em
C:\Users\Helloisa\AppData\Local\Temp\RtmpuiPMho\downloaded_packages
> library(rio)
Some optional R packages were not installed and therefore some file formats are not supported. Check file support with show_unsupported_formats()
Mensagen de aviso:
  pacote ‘rio’ foi compilado no R versão 4.4.2 
> arquivo <- "C:/Users\Helloisa/OneDrive/Área de Trabalho/DEA.txt"
Erro: '\H' is an unrecognized escape in character string (<input>:1:22)
> arquivo <- "C:/Users/Helloisa/OneDrive/Área de Trabalho/DEA.txt"
> Data <- read.csv(arquivo, header = TRUE)
> View(Data)
> colunas <- colnames(Data)
> print(colunas)
[1] "Complexo.Portuário" "DMU"                "Número.de.berços"   "Movimentação.Anual"
[5] "prancha.media"     
> x<-as.matrix(with(Data, cbind(Número.de.berços)))
> y<-as.matrix(with(Data, cbind(Movimentação.Anual, prancha.media)))
> x
Número.de.berços
[1,]                5
[2,]                7
[3,]               14
[4,]               10
[5,]               18
[6,]               16
> y
Movimentação.Anual prancha.media
[1,]           25331034       2127.35
[2,]           19756370        675.30
[3,]           17054731       1248.37
[4,]           30430860        587.70
[5,]           62805581       1241.90
[6,]           24950646        819.60
> x
Número.de.berços
[1,]                5
[2,]                7
[3,]               14
[4,]               10
[5,]               18
[6,]               16
> y
Movimentação.Anual prancha.media
[1,]           25331034       2127.35
[2,]           19756370        675.30
[3,]           17054731       1248.37
[4,]           30430860        587.70
[5,]           62805581       1241.90
[6,]           24950646        819.60
> DeaMultiplierModel(x=y, y=y, rts='crs, orientation ='input')
Erro: unexpected symbol em "DeaMultiplierModel(x=y, y=y, rts='crs, orientation ='input"
> > DeaMultiplierModel(x=x,y=y,rts='crs', orientation ='input')
Erro: '>' inesperado em ">"
> DeaMultiplierModel(x=x,y=y,rts='crs', orientation ='input')
Error in DeaMultiplierModel(x = x, y = y, rts = "crs", orientation = "input") : 
  não foi possível encontrar a função "DeaMultiplierModel"
> library(MultiplierDEA
+ DeaMultiplierModel(x=x,y=y,rts='crs', orientation ='input')
Erro: unexpected symbol em:
"library(MultiplierDEA
DeaMultiplierModel"
> DeaMultiplierModel(x=x,y=y,rts='crs',orientation='input')
Error in DeaMultiplierModel(x = x, y = y, rts = "crs", orientation = "input") : 
  não foi possível encontrar a função "DeaMultiplierModel"
> install.packages(DeaMultiplierModel)
Error in install.packages : objeto 'DeaMultiplierModel' não encontrado
> DeaMultiplierModel(x=x,y=y,rts='crs',orientation='input')
Error in DeaMultiplierModel(x = x, y = y, rts = "crs", orientation = "input") : 
  não foi possível encontrar a função "DeaMultiplierModel"
> library(MultiplierDEA)
Carregando pacotes exigidos: lpSolveAPI
> DeaMultiplierModel(x=x,y=y,rts='crs',orientation='input')
$rts
[1] "crs"

$Orientation
[1] "Input"

$InputValues
     Número.de.berços
DMU1                5
DMU2                7
DMU3               14
DMU4               10
DMU5               18
DMU6               16

$OutputValues
     Movimentação.Anual prancha.media
DMU1           25331034       2127.35
DMU2           19756370        675.30
DMU3           17054731       1248.37
DMU4           30430860        587.70
DMU5           62805581       1241.90
DMU6           24950646        819.60

$Efficiency
           Eff
DMU1 1.0000000
DMU2 0.5570911
DMU3 0.2404551
DMU4 0.6006636
DMU5 0.6887202
DMU6 0.3078073

$Lambda
          DMU1 DMU2 DMU3 DMU4 DMU5 DMU6
DMU1 1.0000000    0    0    0    0    0
DMU2 0.7799275    0    0    0    0    0
DMU3 0.6732742    0    0    0    0    0
DMU4 1.2013272    0    0    0    0    0
DMU5 2.4793927    0    0    0    0    0
DMU6 0.9849833    0    0    0    0    0

$HCU_Input
     Número.de.berços
DMU1         5.000000
DMU2         3.899637
DMU3         3.366371
DMU4         6.006636
DMU5        12.396963
DMU6         4.924917

$HCU_Output
     Movimentação.Anual prancha.media
DMU1           25331034      2127.350
DMU2           19756370      1659.179
DMU3           17054731      1432.290
DMU4           30430860      2555.643
DMU5           62805581      5274.536
DMU6           24950646      2095.404

$vx
     Número.de.berços
DMU1       0.20000000
DMU2       0.14285714
DMU3       0.07142857
DMU4       0.10000000
DMU5       0.05555556
DMU6       0.06250000

$uy
     Movimentação.Anual prancha.media
DMU1       0.000000e+00  0.0004700684
DMU2       2.819805e-08  0.0000000000
DMU3       1.409902e-08  0.0000000000
DMU4       1.973863e-08  0.0000000000
DMU5       1.096591e-08  0.0000000000
DMU6       1.233665e-08  0.0000000000

$Free_Weights
     F1 F2
DMU1 NA NA
DMU2 NA NA
DMU3 NA NA
DMU4 NA NA
DMU5 NA NA
DMU6 NA NA

$Model_Status
     code                   desc
DMU1    0 optimal solution found
DMU2    0 optimal solution found
DMU3    0 optimal solution found
DMU4    0 optimal solution found
DMU5    0 optimal solution found
DMU6    0 optimal solution found
