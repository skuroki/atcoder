# ABC202

ABC201のあと、開発環境の整備を行い、保存時の実行とデバッグプリント用マクロが動くようにしました。今回はそれがワークして、打鍵数はかなり減らすことができたように思います。なお環境のファイルはこのフォルダに一緒に上げてあります。

## A

単純な加減算ですね。

## B

条件判定ではなくハッシュを使ってみました。何も考えずに書いてたらto_symが必要になってしまったあたりが少しださかったかな。

## C

```
bc = N.times.map { |i| B[C[i] - 1] }
g = bc.group_by { |x| x }
gg = (N+1).times.map { |i| (g[i] || []).size }

result = A.map { |i| gg[i] }.sum
```

ggがポイントでしょうか。`gg[x]`には、`B[C[j]] == x`を満たすjの数が入ります。

こういうのを集合論的に書いていけるのはrubyの気持ちいいところかなと思います。

## D

```
def comb(n, m)
  result = 1
  m.times do |i|
    ii = i + 1
    result *= n - ii + 1
    result /= ii
    #dp result
  end
  result
end
```

組み合わせの数を計算する機会は結構あるので、これはテンプレ入りでも良いかもしれない。

パスカルの三角形を活用して、1文字目からabどっち？というのを再帰的に決めていく感じです。

前回再帰でひどい目に会いましたが、まあ今回は30回しか再帰しないことがわかっていたので、安心して書けました。

## E

時間切れ。1回提出したけどだめで、そのあとは修正していません。

公式解説読みましたが、時間内にあれを思いつけた気は全くしないですね…
