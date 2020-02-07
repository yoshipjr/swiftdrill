// method 確認ようのファイル

func sum(a:Int, b:Int) -> Int {
    return a + b;
}
 
// 返り値がタプル タプルの中は別の型でも可
func getCoupleName() -> (String, String) {
    return ("tom", "jerry")
}
var (person1, person2) = getCoupleName();
 
// 引数が可変長
func trace(args: Any...) {
    for arg in args {
        print(arg)
    }
}
trace(args: "unko", "unko", "unko", 1, 2, 3.0, -1);