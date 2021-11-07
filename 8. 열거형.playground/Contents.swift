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
