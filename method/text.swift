/*
*		swift 関数
*/

func name(arguments) -> ReturnType {
	
}

// 返り値ない場合Void
func doSomethingElseCool() -> Void {
    println("Don't Panic")
}

// 値が一つの場合
func returnSomethingCool() -> String {
    return "Teenage Mutant Ninja Turtles"
}

println(returnSomethingCool())


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

func returnTwoCoolThings() -> (String, String) {
    return ("Scotch", "Amaretto")
}

// 可変引数
func calc(#nums:Int...) -> Int {
    var total:Int = 0
    for num in nums {
        total += num
    }
    return total
}
var res = calc(nums:1,2,3,4,5)
println (res)


// inout引数
// 渡された引数自体を上書きする
// 変数numの値が直接書き換わる。
// 値を返すのが関数の基本だが、直接書き換えることが可能になったことで、値そのものを改変しながら変数を利用できる

func tax(inout price:Int, rate:Double = 0.08) -> Void {
    price = Int(Double(price) * (1.0 + rate))
}
 
var num = 12300
tax(&num)