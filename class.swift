class Color {
    var r:Double = 0.0, g:Double = 0.0, b:Double = 0.0
    
    // イニシャライザ
    init(r: Double, g:Double, b:Double) {
        self.r = r;
        self.g = g;
        self.b = b;
    }
    
    func description() -> String {
        return "\(r) \(g) \(b)"
    }
}
// インスタンスの生成
let redColor = Color(r: 1, g:0, b:0);
print(redColor.description())