
// 2つの西暦 a, b が半角スペース区切りの整数で入力されます。

// a から b が何年間あるか出力してください。

// 例えば
// 1990 2014
// と入力された場合
// 24

func century(century_num:String){
  

  let strings = century_num.split(separator: " ")

  let number = strings.map({Int($0)!})

  let num = number[1] - number[0]
  

  print(num)
}

 var century_num = readLine()!
century(century_num:century_num)

//  mapメセッドの使い方

