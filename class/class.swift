/*
*   classの基本
*/

class name {
//クラス内に用意される変数を「プロパティ」、クラス内に用意される関数を「メソッド」
//メソッド・プロパティを記述	
}
// classの基本
class Hello{
	var name = "makoto";

	func say(){
		println ("Hello," + name);
	}
}

class Hello:Helo{
	var name2:String = "naoko";

	func say2(){
		println("Hello," + name2)
	}
}

var obj:Hello = Hello();
obj.say();
obj.name = "Hanako";
obj.name2 = "Tanaka";
obj.say2();