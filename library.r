library(tidyverse)
library(tidytable)
library(geosphere)
library(tidyverse)

library(timeSeries)
library(dplyr) #表形式のデータを処理
library(caret)
library(ggplot2)
library(forecast)
library(lubridate)
library(ModelMetrics)
library(sparklyr) #R言語からSparkを利用するためのパッケージ

set.seed(123) 



#Sparkは、大規模データ処理のためのプラットフォーム
spark_install()
sc <- spark_connect(master = "local")

