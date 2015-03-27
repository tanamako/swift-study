/*
*   classの基本
*/

class Monster {
    var level = 1       // レベル
    let name: String    // 名前

    // イニシャライザ or コンストラクタ
    init() {
        self.name = "不明"
    }
    // 説明
    func description() -> String {
        return "\(name) Lv.\(level)"
    }
}

let m = Monster()
println(m.description()) // 不明 Lv.1

class Monster{
	var level = Int
	let name: String

	init(name:String, level:Int = 1) {
		self.name = "田中です"
		self.level = level		
	}
	func description() -> String {
		return "\(name) Lv.\(level)"
	}
}

let slimeA = Monster(name: "スライム")



class Monster{
	var level:Int
	let name:String

	init(name:String, level:Int = 1) {
		self.name = "田中です"
		self.level = level		
	}
	func description() -> String {
		return "\(name) Lv.\(level)"
	}
}

let slimeA = Monster(name: "佐藤です")
let slimeB = Monster(name: "佐藤です", level: 5)
println(slimeA.description()) 
println(slimeB.description()) 
