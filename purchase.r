# 1. データの読み込み
data <- read.csv("data.csv")

# 2. データの概要を確認
head(data)
str(data)

# 3. 相関行列の計算
cor_matrix <- cor(data[, c("Price", "PurchasePreference")])

# 4. 相関行列の表示
print(cor_matrix)

# 5. 相関係数の可視化
install.packages("corrplot")
library(corrplot)

corrplot(cor_matrix, method = "color")


# カテゴリカルデータのクロス集計
cross_table <- table(data$PurchasePreference, data$Price)
print(cross_table)

# カイ二乗検定の実行
chi2_result <- chisq.test(cross_table)
print(chi2_result)
