// N × (N - 1) / 2
// あなたは1対1で戦う競技の大会を開くことにしました。

// N 人の選手で総当り対戦を行う場合、何回の対戦が行われるか出力して下さい。
// N 人の総当り戦では N 人がそれぞれ自分自身以外と対戦します。
// また、自分自身から見た結果と、相手側から見た結果があるので N × (N - 1) / 2で求められます。
var num = Int(readLine()!)!

var number = (num * (num - 1 ) / 2)

print(number)