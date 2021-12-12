import UIKit

//객체지향적 언어의 특징 1.캡슐화 2.상속 3.override
//자식클래스(subclass) -> 부모클래스(superclass) !스위프트는 하위 클래스는 단 하나의 부모 클래스만 상속받을 수 있음, 상속은 클래스만 가능
//class 자식: 부모 { } (부모명 다음에 오는 나머지는 프로토콜이다)

class Man {
    var age: Int = 1
    var weight: Double = 3.5
    func display() {
        print("나이=\(age), 몸무게=\(weight)")
    }
    init(age: Int, weight: Double) {
        self.age = age
        self.weight = weight
    }
}

class Student: Man {  //Man의 모든 것을 가지고 있음
    var name: String = "홍길동"
    func displayS() {
        print("이름=\(name), 나이=\(age), 몸무게=\(weight)")
    }
    init(age1: Int, weight1: Double, name: String) {
        super.init(age: age1, weight: weight1)  //부모생성자는 super를 넣어야한다!
        self.name = name
    }
}
var kim: Man = Man(age: 10, weight: 20.5)
kim.display()
var lee: Student = Student(age1: 20, weight1: 65.2, name: "개똥이")
lee.display()  //나이=20, 몸무게=65.2
lee.displayS()  //이름=개똥이, 나이=20, 몸무게=65.2



//override : 부모와 자식에 같은 메서드가 있으면 자식 우선
class Student1: Man {  //Man의 모든 것을 가지고 있음
    var name: String = "존시나"
    override func display() {  //부모클래스 함수 이름과 같은 걸 쓰고싶은 경우 override를 붙인다
        print("이름=\(name), 나이=\(age), 몸무게=\(weight)")
    }
    init(age1: Int, weight1: Double, name: String) {
        super.init(age: age1, weight: weight1)  //부모생성자는 super를 넣어야한다!
        self.name = name
    }
}
var park: Student1 = Student1(age1: 19, weight1: 40.2, name: "김사랑")
park.display()


//extension : 클래스, 구조체, 열거형, 프로토콜에 새로운 기능을 추가
//하위 클래스를 생성하거나 참조하지 않고 기존 클래스에 메서드, 생성자, 계산프로퍼티 등의 기능을 추가
extension Double {
    var squared: Double {  //새로운 프로퍼티를 추가한다
        return self * self
    }
}

let myValue: Double = 3.0
print(myValue.squared)  //9.0


//access modifier : 접근제어
//open, pubilc, internal, fileprivate, private 순서로 접근수준이 낮아진다. (기본은 internal)
//open, public : 모듈의 모든 소스파일 내에 사용가능, 다른 소스파일 사용가능(open 접근은 클래스,클래스멤버에 사용)
//internal : 해당 모듈의 모든 소스파일 내에서 사용가능, 외부는 X(일반적인 내부구조를 정의할때 사용)
//fileprivate : 해당 소스 파일 내에서만 사용가능
//private : 블록 내에서만 사용 {}
