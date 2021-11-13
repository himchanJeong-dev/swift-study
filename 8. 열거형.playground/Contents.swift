import UIKit

// enum 열거형 : 관련있는 데이터들이 멤버로 구성되어 있는 자료형 객체
//원치 않는 값이 잘못 입력되는 것 방지, 입력 받을 값이 한정되어 있을 때, 특정 값 중 하나만 선택하게 할 때
//예: 성별(남, 여)

enum Compass {
    case North, South, East, West  //case 별로 쓰는것도 사용가능
}
print(Compass.North)  //North
var direction = Compass.West  //West
direction = .East  //한번 compass형으로 해놓으면 앞에 열거형이름이 생략가능
print(direction, type(of: direction))  //East Compass

//열거형은 switch구문과 연계해서 잘 쓰인다
switch direction {
case .North:
    print("북")
case .South:
    print("남")
case .East:
    print("동")
case .West:
    print("서")
}


//다양한 타입의 원시값을 가지는 열거형
enum CompassPoint: String {  //타입을 꼭 넣어줘야한다
    case North = "북"
    case South = "남"
    case East = "동"
    case West = "서"
}
var direction1 = CompassPoint.West
switch direction1 {
case .North:
    print(direction1.rawValue)
case .South:
    print(direction1.rawValue)
case .East:
    print(direction1.rawValue)
case .West:
    print(direction1.rawValue)  //서 출력
}
//원시값을 가지고 열거형을 반환하게 할 수 있다.
let direction2 = CompassPoint(rawValue: "남")  //South



//열거형의 연관값 : 항목옆에 소괄호 연관값을 넣어준다(항목중 하나만 넣어도 된다)
enum PhoneError {
    case unknown
    case batteryLow(String)
}
let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")  //소괄호 안의 연관값을 초기화

//연관값 추출하기
switch error {
case .batteryLow(let message):  //연관값을 넘겨 받을 수 있게 상수를 선언해준다
    print(message)
case .unknown:
    print("알 수 없는 에러입니다.")
}  //배터리가 곧 방전됩니다 출력

