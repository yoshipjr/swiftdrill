// orderに格納された文章が

// カレーなら, お時間少々かかりますがよろしいでしょうかと出力.

// 牛丼なら, 並でよろしいでしょうかと出力.

// コーヒーなら, ホットとアイスがございますと出力

// それ以外を入力された場合はメニューにない商品ですと出力するプログラムをswitch文を用いて組め.


var order:String = readLine()!

switch order {
case "カレー":
  print("\(order)なら、 お時間少々かかりますがよろしいでしょうか")
case "牛丼":
  print("\(order)なら、牛丼なら, 並でよろしいでしょうかと出力.")
case "コーヒー":
  print("ホットとアイスがございます")
default:
  print("メニューにない商品です")
}
