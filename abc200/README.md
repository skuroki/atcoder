# ABC200

## A

1-100年は1世紀、101-200年は2世紀…、という感じで、年を100で割った答えと少しずれてるのがポイントですね。

## B

書いてあるとおりに実装すればいいやつですね。こういうのはrubyは強い。

## C

200の倍数ということは200で割った余りが0ということ。例でも示されていますが、負の値でも関係なく200の倍数ですね。

2つの値の差が200の倍数ということは、2つの値をそれぞれ200で割ったときの余りが同じ値だということ。

なので、余りがxの数値が数列の中に1つなら0個、2つなら1個、3つなら3個…、iつならC(i, 2)= `i * (i - 1) / 2`個の組み合わせがある。

これを、xが0から199の場合までの200通りについて調べると、その合計が回答、ということになります。

整数を余りで分類する考え方は私は大学の離散数学の授業で学んだのですが、皆さんはどうなんでしょうか。

## D

Cと同じく、余りで分類して考える問題です。

ものすごく膨大なパターンを調べる必要があるように見えますが、余りが等しいというのがポイントです。
余りは0から199の場合までの200通りしかないので、201個調べたら等しい組み合わせが必ず1組以上登場します。

この、調べるのは201個で良い、というのに気付けるかどうか、ですよね。「割とある話なので知ってたらすぐわかる」「知らなくてもある程度考えたらわかる」くらいでしょうか。

201個をどうやって調べるかには色んな作戦があるみたいですが、私は「先頭の8要素の足す/足さないの組み合わせで2の8乗=256通りだから足りるじゃん」作戦で行きました。
ビット演算はrubyでは`&`ですが仕事とかではあまり使う機会がないので、使えるとテンションが上ります。
2重ループは時間かかりそうで怖いですけど、今回なら1600回くらいと決まっているので、こういう場合は心配ありませんね。

## E

途中で時間切れでした。ものを配る数の組み合わせは「しきいの位置の組み合わせ」で考える、つまり

```
1,1,3個を配るなら oxoxooo
2,2,1個を配るなら ooxooxo
```

というのが大学受験数学のテクニックであったんですが、今回これじゃだめなんですよね。というのは、パラメータ最大値があるから。

パラメータ最大値が2だった場合は、1,1,3のパターンはないわけですね。

これが考慮から抜けてしまって、計算し直しになったところでだめでした。残念。