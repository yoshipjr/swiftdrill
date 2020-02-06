let text = "HelloWorld!"
println(text)
/ Linux環境用に用意されてるCocoaやUIKit的なもの
import Foundation
// 以下Stringを拡張
extension String: CollectionType {
    // 基本的なところはSim_prograさんのものを踏襲
    // 動作などは上記リンクの記事から確認してください
    func at(i: Int) -> String {
        return String(self[self.startIndex.advancedBy(i)])
    }
    var length: Int {
        return self.characters.count
    }
    func splitToArrayOfInt() -> [Int] {
        return self.characters.flatMap({Int(String($0))})
    }
    // こっからオレオレ
    // よく使うと思うのでいちいちcharactersと書く手間を省く
    var indices: Range<String.CharacterView.Index> {
        return self.characters.indices
    }
}
// 数字と文字とか混ざっている時用
func readElements() -> [String] {
    return readLine()!.split(" ")
}
// 数字のみのとき
func readInts() -> [Int] {
    return readElements().map({Int($0)!})
}
// 空白以外で句切られている時用
func readElementsWithOption(k: Character) -> [String] {
    return readLine()!.split(k)
}
func readIntsWithOption(k: Character) -> [Int] {
    return readElementsWithOption(k).map({Int($0)!})
}
// y_mazunさんの記事より。おそらく個数もうちょい必要かと思うので適宜増やすのがいいかも
prefix operator * {}
prefix func * <T> (a: [T]) -> (T, T) { return (a[0], a[1]) }
prefix func * <T> (a: [T]) -> (T, T, T) { return (a[0], a[1], a[2]) }
// まずprotocol
protocol Container {
    associatedtype ItemType
    mutating func append(item: ItemType)
    var count: Int { get } // { get }はgetter処理の実装を必須とする
    subscript(i: Int) -> ItemType { get }
}
// StackとQueueは公式ドキュメントを参考に
struct Stack<Element: Comparable>: Container {
    var items = [Element]()
    mutating func push(item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    mutating func append(item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}
struct Queue<Element: Comparable>: Container {
    var items = [Element]()
    mutating func push(item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeFirst()
    }
    mutating func append(item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}
// StackとQueueがこれで書けと言っているんだからおそらくHeapも無いんじゃないかということで
// 実装には恒例蟻本を参考にしています
struct Heap<Element: Comparable>: Container {
    var items = [Element]()
    mutating func push(item: Element) {
        var i = items.count
        while i > 0 {
            let p = (i - 1) / 2
            if items[p] <= item {
                break
            }
            if i == items.count {
                items.append(items[p])
            } else {
                items[i] = items[p]
            }
            i = p
        }
        if i == items.count {
            items.append(item)
        } else {
            items[i] = item
        }
    }
    mutating func pop() -> Element {
        var ret = items[0]
        var x = items[items.count - 1]
        var i:Int = 0
        while i * 2 + 1 < items.count - 1 {
            var a = i * 2 + 1
            var b = i * 2 + 2
            if b < items.count - 1 && items[b] < items[a] {
                a = b
            }
            if items[a] >= x {
                break
            }
            items[i] = items[a]
            i = a
        }
        items[i] = x
        _ = items.removeLast()
        return ret
    }
    mutating func append(item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}
