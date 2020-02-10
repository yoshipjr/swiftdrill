// 正の整数 N が入力されるので、N が奇数ならば"odd" 偶数ならば"even" と出力するプログラムを作成して下さい。

var num:Int = Int(readLine()!)!

if (num % 2 == 0) {
  print("even")
}
else if (num%2 != 0) {
  print("odd")
}