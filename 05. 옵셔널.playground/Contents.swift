import UIKit

print(Int("100")) // Optional(100)
print(Int("100")!) // 100
print(Int("Hi")) // nil
// 옵셔널 타입은 변수 또는 상수에 아무런 값이 할당되지 않는 상황을 안전하게 처리하기 위한 방법 제공
// 왜 옵셔널 사용? 옵셔널 타입만이 값을 가지지 않는다는 의미 nil값을 가질 수 있다. 값이 없는 상황까지 고려 가능

 // '값이 있을 수도, 없을 수도 있음'을 뜻한다 - nil의 가능성을 명시적으로 표현
var number: Int? = nil
 // var kokoo: Int = nil (물음표나 느낌표를 안붙이면 오류발생)
var naver: Int? = number // nil

var name: String? // 옵셔널의 초기값을 따로 할당하지 않으면 자동으로 nil이 할당된다

var optionalName: String? = "옵셔널 배우기"
print(optionalName) // Optional("옵셔널 배우기")
// 옵셔널과 일반 값은 다른 타입이므로 연산 불가(기존 변수처럼 사용 불가)
 //number = number + 1 (오류뜬다!)


// 명시적 해제 - 강제 해제 (느낌표를 붙인다) : 위험! 값이 닐인(초기값없는) 옵셔널을 강제해제하면 프로그램이 강제종료됨
var number1: Int? = 3 // 초기값이 있어서 오류발생하진 않음, 초기값없으면 오류가 발생하기때문에 강제 언래핑 쓰지 말자
print(number1) // Optional(3)
print(number1!) // 3

var x: Int?
x = 10
if x != nil {
    print(x!)
}
else {
    print("nil")
}

/* 명시적 해제 - 비강제 해제(옵셔널 바인딩) result상수는 if블록 내에서만 사용가능, guard구문은 코드 전체에 사용가능
옵셔널 변수가 값이 있다면 언래핑해서 일반 상수,변수에 대입하고 if문 실행, 값이 없다면 if문 조건 거짓이 되어 실행하지 않음 */
if let result = number1 {
    print(result)  // 3
} else {
    print("number1 == nil")
}

var y: Int?
y = 100
if var yy = y {
    print(y, yy) // Optional(100) 100
} else {
    print("nil") // 초기값이 없다면 nil 출력
}


// 여러 옵셔널을 언래핑하는 방법 : 콤마 사용
var pet1: String?
var pet2: String?
pet1 = "cat"
pet2 = "dog"
if let firstPet = pet1, let secondPet = pet2 {
    print(firstPet, secondPet, pet1)  // cat dog Optional("cat")
} else {
    print("nil")
}


// 묵시적 해제 - 컴파일러에 의한 자동 해제
let value: Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}


 // 묵시적 해제 - 옵셔널의 묵시적 해제 (기존 변수처럼 사용 가능)
let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)

/* 클래스의 아웃렛 변수 초기화에 많이 사용(자동 생성되는 코드)
옵셔널이 항상 유효한 값을 가질 경우 옵셔널이 암묵적인 언래핑이 되도록 실행할 수 있다
묵시적 해제를 선언하기 위해서는 선언부에 물음표 대신 느낌표 사용 */

let x1: Int! = 1
let y1: Int = x1  // y1의 타입이 Int이므로 옵셔널로 사용되지 않으면 자동으로 unwrapping
let z1 = x1  // z1의 자료형이 결정되어있지 않으므로 z1은 옵셔널형
let a1 = x1!  // 강제언래핑해서 옵셔널형이 아닌 1
let b1 = x1 + 1 //  더하기를 하기 위해 자동으로 옵셔널을 풀어버림
print(x1, y1, z1, a1, b1)  // Optional(1) 1 Optional(1) 1 2
print(type(of: x1), type(of: y1), type(of: z1), type(of: a1), type(of: b1))
// Optional<Int> Int Optional<Int> Int Int


// nil합병연산자(Nil-Coalescing Operator)
let defaultage = 1
var age: Int?
age = 3
print(age) // Optional(3)
var myage = age ?? defaultage  // 옵셔널 변수의 값이 nil이면 물음표 다음 값으로 할당됨
print(myage) // 3 (옵셔널3이 아님! 풀려서 할당됨)

let defaultColor = "black"
var userDefinedColor: String? // 초기값없어서 nil
var myColor = userDefinedColor ?? defaultColor
print(myColor)  // black
userDefinedColor = "red" // 초기값 부여
myColor = userDefinedColor ?? defaultColor
print(myColor) // red
