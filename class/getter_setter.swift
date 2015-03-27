/*
*   classの基本
*/

class Monster {
	let name:String
	var maxHitpoint:Int = 0
	var hitPoint:Int = 0
	// レベル
	var level:Int {
		get{
			return max(1,Int(sqrt(Float(maxHitpoint - 10))))
		}
		set(lv) {
			maxHitpoint = 10 + lv * lv
		}
	}
	// イニシャライザ
	init(name:String, level:Int = 1) {
		self.name = name
		self.level = level
		self.hitPoint = self.maxHitpoint
	}
	// 説明
	func description() -> String {
		return "\(name) Lv.\(level) HP(\(hitPoint)/\(maxHitpoint))"
	}
}

let chara = Monster(name:"ゴブリン", level: 10)
println(chara.description()) //ゴブリン Lv.10 HP(110/110)
chara.level = 20
println(chara.description()) //ゴブリン Lv.20 HP(110/410)

/*
	同一インスタンス判定
*/


var monsterA = Monster()
monsterA.name = "スライム"
var monsterB = monsterA

if monsterA === monsterB {
    println("同じインスタンス")
}
if monsterA !== monsterB {
    println("同じインスタンスではない")
}