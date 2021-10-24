import UIKit
// 클로저(closure)
/* { (매개변수 목록) -> 반환타입 in
 실행코드
 }
*/

func add(x: Int, y: Int) -> Int {
    return x + y
}
print(add(x: 10, y: 20))  // 30
// 클로저는 익명함수! 이름이 없는 함수를 뜻함
// 함수 이름을 지우고 중괄호를 앞으로 뺀 다음 중괄호 자리에 in을 넣는다 함수 블럭을 변수,상수에 적용해 호출
// 호출할때는 매개변수 내용을 안넣고 값만 넣어 호출. 전달인자 레이블을 적지않고 넣어야 한다 넣으면 오류
let add1 = { (x: Int, y: Int) -> Int in
    return x + y
}
print(add1(10, 20))  // 30

let hello = { () -> () in
    print("hello")
}
hello()
let hello2 = {(name: String) -> String in
    return "hello, \(name)"
}
hello2("him")

// 함수의 전달인자로서의 클로저
let subtract = { (a: Int, b: Int) -> Int in
    return a - b
}
let divide = { (a: Int, b:Int) -> Int in
    return a / b
}
func calculate(x: Int, y: Int, method: (Int, Int) -> Int) -> Int {
    return method(x, y)  // method호출
}
var calculated = calculate(x: 10, y: 5, method: subtract)
print(calculated)  // 5

//매개변수 전달인자에 클로저 코드블럭을 바로 넣을 수 있다
calculated = calculate(x: 10, y: 5, method: { (a: Int, b:Int) -> Int in
    return a / b
})
print(calculated) // 2


// 후행클로저(trailing closure) : 클로저가 마지막 매개변수라면 이름 생략가능
calculated = calculate(x: 10, y: 5) { (a: Int, b:Int) -> Int in
    return a + b
}
print(calculated)  // 15

// 클로저 축약과 단축인자 사용
calculated = calculate(x: 5, y: 7) { $0 + $1 }
print(calculated)  // 12

