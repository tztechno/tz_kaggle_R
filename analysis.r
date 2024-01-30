

記述統計: データの基本的な特性や傾向を理解するために、平均、中央値、標準偏差、分位数などを計算します。

summary(data)
mean(data)
median(data)
sd(data)


グラフ作成: データの視覚化は重要な要素であり、Rは様々な種類のグラフやプロットを生成するための豊富なパッケージを提供しています。

plot(data)
hist(data)
boxplot(data)


仮説検定: データセットの異なるグループ間で平均や分散が異なるかどうかを調べるための仮説検定を行います。

t.test(group1, group2)
wilcox.test(group1, group2)
chisq.test(table)


回帰分析: 変数間の関係を調べ、予測モデルを構築するための回帰分析を行います。

lm(dependent ~ independent, data)


クラスタリング: 似たようなデータポイントをグループ化するクラスタリング手法を実行します。

kmeans(data, centers = 3)


因子分析: 多変量データの潜在的な構造を探るための因子分析を行います。

factanal(data, factors = 3)
