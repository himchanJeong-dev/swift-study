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
