## 標準入出力

```swift
 let input_line=readLine()! // 標準入力から１行目を取得
 print(input_line)
```
「readLine()」は標準入力を１行ずつ読み込んでくれる関数です。２行読ませたい場合は以下のように書きます。


```swift
let input_line1 = readLine()! // 標準入力から１行目を取得
let input_line2 = readLine()! // 標準入力から2行目を取得

 print(input_line)
```


## よく使う文字列操作
標準入力から与えられる文字列から複数の値を配列で受け取る方法です。

```swift
  let input_line = "1 3 5 7"
  let strings = input_line.split(separator: " ")
  print(strings) // => ["1", "3", "5", "7"]
```



