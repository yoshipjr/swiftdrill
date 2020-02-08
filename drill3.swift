// (1)1から99までの自然数の中で3の倍数の数字をlist1に格納せよ.

var list: [Int] = []
for item in 1..<99 {
  if (item % 3 == 0) {
    list.append(item) 
  }else {
    
  }

}
// (2)1から200までの自然数の中で3で割ると1余る数字をlist2に格納せよ.


var list2: [Int] = []
for item in 1..<200{
  if (item % 3 == 1){
    list2.append(item)
  }
}
print(list2)

// (3)3桁の自然数の中で5で割りきれて, 3で割り切れない数字をlist3に格納せよ.
var list3: [Int] = []
for item in 1..<999{
  if (item % 3 != 0) && (item % 5 == 0){
    list3.append(item)
  }
}
print(list3)


// 模範回答
var list1: [Int] = []
for i in 1..<100{
    if i%3 == 0{
        list1.append(i)
    }
}
print("list1: ", list1, "\n")

// (2)
var list2: [Int] = []
for i in 1..<201{
    if i%3 == 1{
        list2.append(i)
    }
}
print("list2: ", list2, "\n")

// (3)
var list3: [Int] = []
for i in 100..<1000{
    if (i % 5 == 0) && (i % 3 != 0){
        list3.append(i)
    }
}
print("list3: ", list3)