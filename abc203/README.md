# ABC203

## A

うまいこと一般化できそうに見えて、書いてしまったほうが早いパターンだったかなと思います。

## B

100の位の数え方、1の位の数え方を分けて考えられれば大丈夫だと思います。

## C

友達を近い順に並び替えて、1人づつ、そこに到達できるかを確認して、到達できる一番最後の友達のところから有り金全部使って移動します。

## D

問題文を読んで、少し考えて、オーダーを抑える計算が全く思いつかなかったので、飛ばしました。

解説を読んでそれは正解だったと思いました。Dに移った時点で残り1時間以上ありましたが、その全てを使ってもこの解法（二次元累積和を使った二分探索）にたどり着けたとは思えません。

累積和、使ったことがないので、これは一度手を動かしてみたほうが良い気がしています。

## E

終了後2時間かけて先程ACできました。

最初はそれぞれのyについて移動できるxを範囲の配列で管理していく、と考えていましたが、これはTLEでした。

解説を読んで、xを進めながら判定していくのだから、そのときのyだけ管理すれば良いことに気づきました。これでACできるケースが増えましたが、まだTLEでした。

yの管理にSetを使っていたのですが、アルゴリズム上は削れるところが見当たらなかったので、要素アクセスの高速化に期待して、「2M+1要素の配列に真偽を格納してyを管理する」作戦に切り替えました。これでACが取れました。小技として、盤面の座標を(0, -N)ずらすということを行って、初期位置が原点になるようにして、話をシンプルにしました。

最初に書いたコードは処理が結構複雑になってしまっていて、書く時間も結構かかってしまっていました。教訓として、問題を可能な限りシンプルに捉えることが大事で、執拗に「これもっとシンプルにならないか」を自問する必要があるなと感じています。

## F

未着手でした。
