
system.time() 関数が返す結果のうち、elapsed フィールドは経過時間（ウォールクロック時間）を秒単位で表します。
このフィールドを利用して関数の実行時間を取得できます。

# 測定対象の関数
my_function <- function() {
  # ここに測定したい処理を記述
  for (i in 1:1000000) {
    sqrt(i)
  }
}

# 関数の実行時間を測定
timing_result <- system.time(my_function())

# 実行時間（elapsed）の表示（単位は秒）
print(paste("Elapsed time: ", timing_result$elapsed, " seconds"))
