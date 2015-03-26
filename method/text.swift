/*
*		swift 関数
*/

func name(arguments) -> ReturnType {
	
}

// 引数を複数指定出来る
func calc(price p:int, rate r:Double) -> int {
	return int(Double(price) * (1.0 + rate))
}

// ショートハンドにする場合 => 外部名と変数を両方もつ意味がないから
func calc(#price:int, #rate:Double) -> int {
	return int(Double(price) * (1.0 + rate))
}

// 複数の返り値とタプル
// swiftの関数は複数の値を返す
// タプルは複数の値をひとまとめにして扱うもの。(名前：値,名前：値...)

var person = (name: 'makoto', age: 25);
person.name
person.age

func tax(price:Int) -> (kakaku:Int, zei:Int) {
	var zei:Int = Int(Double(price)* 0.08)
	var kakaku:Int = price - zei
	return (kakaku:kakaku, zei:zei)
}

var res = tax(10000)
res.kakaku
res.zei

