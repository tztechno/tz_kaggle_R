# データフレームの'Species'列の一意の値を取得
Name <- unique(data$Species)

# 一意の値に対して数値を割り当てる
N <- seq_along(Name)

# マッピングを作成
normal_mapping <- setNames(N, Name)
reverse_mapping <- setNames(Name, N)

# データフレームの'Species'列をマッピングに従って変換
data$Species <- normal_mapping[data$Species]
