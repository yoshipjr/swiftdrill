// xがyよりも大きければ xは大きい
// xがyよりも小さければ xは小さい
// xとyが同じならば xは普通
// と出力するプログラムを組め.

// var x:String = readLine()!
// var y:String = readLine()!

var x:Int = Int(readLine()!)!
var y:Int = Int(readLine()!)!

if x > y {
  print("xは大きい")
}
else if y > x {
  print("xは小さい")
}
else if x == y  {
  print("xは普通")
}

