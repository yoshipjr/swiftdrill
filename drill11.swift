// その運賃計算は以下のルールで行われます。

// ・初乗り運賃 100 円
// ・1 区間ごとに 10 円ずつ加算

// ある乗客の乗った区間数 N が与えられるので運賃がいくらかを出力するプログラムを作成してください。

// 100 + 3 × 10

var num = Int(readLine()!)!

var num2 = (100 + num * 10)

print(num2)

