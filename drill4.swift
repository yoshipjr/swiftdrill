// (1)整数が格納されたリストlistを受け取り, 合計値を返す関数を作れ.
var list:[Int] = [1,2,3,4,5,6,7,8,9,]

func add(list:[Int])-> Int {
  // list.forEach {
  //   var num:Int += $0
  // }
  return list.reduce(0){$0 + $1}
}
// (2)整数が格納されたリストlistを受け取り, 平均値を返す関数を作れ.
func average(list:[Int])-> Int {
  var summary:Int = add(list: list)    
  return summary/(list.count)

}


var summary:Int = add(list: list)
print(summary)

var average:Int = average(list: list)
print(average)