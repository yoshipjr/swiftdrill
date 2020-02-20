// あなたはサーバ管理者です。 日々洪水のように流れるログを追っています。
// とうとう自分の目と頭では処理しきれない量になってしまったため、プログラムを作って、重要な文字列を含むログだけ抽出する事にしました。

// 例えば、入力例 2 では、ログは上から順に "pizza"、 "paiza"、 "aizu"、 "ai"、 "sai" の 5 つです。
// この 5 つのログに対して、重要な文字列 "ai" が含まれているのは "pizza" 以外の 4 つです。
// 結果として "pizza" だけが除かれ、 "paiza"、 "aizu"、 "ai"、 "sai" がこの順に抽出されます。


// 文字列の検索メソッド 


// let sentence = "This is a ballpen."
// // 文字列が見つかった場合はrangeに範囲が代入される
// if let range = sentence.range(of: "ball") {
//     print("\(sentence[range])が見つかりました。")
// } else {
//     print("文字列は見つかりませんでした。")
// }

// let name:String = "USAKO"
// if (name.contains("SAK")){ //trueのとき
//    print("SAKが含まれる文字列")
// }else{
//    print("SAKが含まれない文字列")
// }

var string : String = "abcdefg"
if string.rangeOfString("cde") { // false
    print("一致")
}
else {
    print("不一致")
}


