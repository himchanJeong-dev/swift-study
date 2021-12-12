import UIKit

/* 함수 기본
func 함수명(매개변수1이름: 데이터타입, 매개변수2이름: 데이터타입 ...) -> 반환타입 {
return 반환값
 }
 */
func sum(a: Int, b: Int) -> Int{
    return a + b
}
sum(a: 3, b: 5)
print(sum(a: 3, b: 5))
//함수의 타입 확인
print(type(of: sum))

//리턴값이 없는 함수 : 리턴값이 없으면 -> Void를 사용해야하지만 생략 가능
func flavor(name: String) -> Void {
    print("이번달의 아이스크림 맛은 \(name)입니다")
}
flavor(name: "슈팅스타")

// 함수 고급
// 매개변수 기본값 : 출력할때 기본값 사용가능, 기본값이 아니면 매개변수를 넣어서 새로운 값 출력가능
func autoHello(guest: String, bestFlavor: String = "사랑에 빠진 딸기") {
    print("Hello \(guest)! Best icecream menu is \(bestFlavor).")
}
autoHello(guest: "손님")
autoHello(guest: "민초단", bestFlavor: "민트 초콜릿 칩")


 // 전달인자 레이블 : 함수 내부에는 내부 매개변수 이름 사용, 함수를 호출할 때는 전달인자 레이블 사용(외부 매개변수)
func autoHello2(to guest: String, from myName: String) {
    return print("hello \(guest)! we are \(myName)!")
}
autoHello2(to: "방문손님", from: "배스킨라빈스 31")


// 전달인자 레이블을 사용하지 않는 함수 : 언더바 _ 매개변수 이름을 따로 적을 필요없이 값만 넘기게 호출
// 첫번째 외부매개변수만 생략하는 경우가 많다. Objective-C언어 호출방식 일치 (모든 외부매개변수를 생략하는 경우는 잘 안쓰임)
func sendMessage(_ name: String) -> String {
    return "Hello, \(name)"
}
print(sendMessage("라이언"))


// 가변 매개변수 : 전달 받을 값의 개수를 알 수 없을때 사용, 가변 매개변수는 함수당 하나만 가질 수 있다, 매개변수 데이터타입 뒤에 점3개
// 기본값이 있는 매개변수와 가변 매개변수는 매개변수 목록 중 뒤쪽에 위치하는 것이 좋다
func sayHelloToFriends(friends: String...) {
    for string in friends {
        print("\(string) Hello!")
    }
}
sayHelloToFriends(friends: "Lee" , "Park" , "Kim")

func add(numbers: Int...) {
    var sum: Int = 0
    for num in numbers {
        sum += num
    }
    print(sum)
}
add(numbers: 1,2,3,4)


//함수로부터 여러 개의 결과 반환(튜플 사용하기)
func converter(length: Float) -> (yards: Float, centimeters: Float, meters: Float) {
    let yards = length * 0.0277778
    let centimeters = length * 2.54
    let meters = length * 0.0254
    return (yards, centimeters, meters)
}
var lengthTuple = converter(length: 20)
print(lengthTuple.yards)
print(lengthTuple.centimeters)
print(lengthTuple.meters)

//스위프트는 함수를 데이터 타입처럼 처리 가능 (스위프트의 함수는 1급 객체) 변수 저장, 매개변수로 전달, 리턴값으로 사용 가능
// 함수의 타입표현  - 반환타입은 생략 불가능, 미리 만들어둔 함수를 변수에 이용하기!
func HelloToFrom(to Friend: String, from me: String){
    print("GoodJob! Hello \(Friend)! I'm \(me)")
}
HelloToFrom(to: "gogo", from: "Yami")
var someFunction: (String, String) -> Void = HelloToFrom(to:from:)
//var someFunction = HelloToFrom 로 축약 가능
someFunction("bebe", "jesi")


// 반대의 경우 - 함수에 먼저 기본값을 넣고 실행할 때 다른함수 불러오기
func AnotherFunc(funtion:(String, String) -> Void){
    funtion("cherry", "mango")
}
AnotherFunc(funtion: HelloToFrom(to:from:))
