import UIKit

//protocol : 특정 클래스와 관련없는 프로퍼티, 메서드 선언 집합(기능이나 속성에 대한 설계도)
//클래스, 구조체, 열거형, extension에 프로토콜을 채택할 수 있다(adopt)

/* protocol 프로토콜명 {
 프로퍼티명
 메서드 선언 (메서드는 선언만 있음)
 }
 */

/* protocol 프로토콜명: 다른프로토콜, 다른프로토콜2 {
 프로토콜은 다중 상속도 가능
 }
 */

protocol Runnable {
    var x: Int {get set}  //읽기 쓰기 가능
    func run()
}
class Man: Runnable {  //adopt
    var x: Int = 1  // conform(준수), 프로토콜에 기본값을 추가해야함
    func run() {
        print("달린다~")
    }
}
let kim = Man()
kim.run()  //달린다~
kim.x  //1
