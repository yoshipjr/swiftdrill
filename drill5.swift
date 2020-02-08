// オブジェクト指向プログラミング
class Monster {
  var level = 1
  var name:String = "noname"

  func description() -> String {
    if name == nil {
      return "不明 Lv: \(level)"
    }else{
      return "\(name) Lv.\(level)"
    }
  }
  
}

var slime = Monster()

print(slime.level)
slime.description()
