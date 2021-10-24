import UIKit
// 구조체 : 값 타입
/* struct 구조체 이름 {
    프로퍼티와 메서드
 }  */

// 멤버변수는 프로퍼티, 멤버함수는 메서드를 뜻한다 구조체와 클래스는 대문자부터 시작하는 파스칼표기법(카멜x)//

struct User {
    var nickname: String  // 프로퍼티
    var age: Int
    
    func information() {  // 메서드
        print("\(nickname) \(age)")
    }
}


// 인스턴스 생성하기 : 생성자를 따로 안만들어도 만들어진다
var user = User(nickname: "김철수", age: 29)

user.nickname  // 구조체 안에 있는 프로퍼티 값에 접근? (인스턴스 이름.프로퍼티 이름)
user.nickname = "김영희"
user.nickname
user.information()  // 김영희 29  인스턴스.함수()



struct IcecreamFlavor {
    var name: String
    var price: Int
    
    func namePriceSpeak() {
        print("\(name) is \(price)$.")
    }
}

var icecreamFlavor = IcecreamFlavor(name: "banana", price: 10)
icecreamFlavor.name
icecreamFlavor.name = "strawberry"
icecreamFlavor.name
icecreamFlavor.price
icecreamFlavor.namePriceSpeak()





// 클래스 : 참조타입 , 클래스 안의 프로퍼티는 반드시 초기값이 있어야 한다 1.초기값작성 2.init생성자함수 이용 3.옵셔널 변수(상수)로 선언
// 클래스로부터 만들어진 객체를 인스턴스라 한다
/* class 클래스이름 {
   프로퍼티와 메서드
   }   */

class Dog {
    var name: String = ""  // 초기값을 넣거나 생성자함수 혹은 옵셔널변수를 넣어야함
    var age: Int = 0
    func introduce() {
        print("name \(name) age \(age)")
    }
    class func cM() {
        print("cM은 클래스 메서드입니다.")
    }
    static func scM() {
        print("scM은 클래스 메서드(static)")
    }
}
// 저장 프로퍼티 사용(stored property)
/* 위에는 인스턴스 메소드 아래 둘은 타입 메서드(클래스 메서드라고도 함. 둘 다 똑같다 다만 상속고려할때는 앞에 class를 붙임)
 class키워드로 만든 클래스 메서드는 자식클래스에서 override가능함 */
// 인스턴스 메서드는 객체가 호출하는 메서드, 타입 메서드는 클래스가 호출하는 메서드

var dog = Dog()  // :Dog 는 생략가능. var 객체: 클래스 = 클래스() ()는 생성자 자동
dog.name = "coco"
dog.age = 3
dog.name
dog.age
dog.introduce()
//dog.cM() , dog,scM() 은 오류가 뜬다. 타입메서드는 클래스 자체에서 사용 가능하다! 객체 사용불가
Dog.scM()  // scM은 클래스 메서드(static)





// designated initializer : 모든 프로퍼티를 다 초기화시키는 생성자
class Man {
    var age: Int  // 생성자를 넣으면 초기값 넣어도 되고 생략도 가능
    var weight: Double
    func display() {
        print("나이=\(age), 몸무게=\(weight)")
    }
    init(yourAge: Int, yourWeight: Double) {
        age = yourAge
        weight = yourWeight
    }
}
var kim = Man(yourAge: 10, yourWeight: 10.5)  // var kim = Man()오류
kim.display()  // 나이=10, 몸무게=10.5
// self : 현재 클래스 내 메서드나 프로퍼티를 가리킬 때 메서드, 프로퍼티 앞에 self.를 붙인다
// age = age인 경우엔 self.age = age로 써야한다, 일반적으로는 위에처럼 바꾸는것보단 같은 변수이름 self를 쓴다!


//computed property
class Man1 {
    var age: Int = 1  // stored property
    var weight: Double = 3.5
    var manAge: Int {  // computed property(계산 프로퍼티) var로 선언해야 함
        get {
            return age - 1  // setter가 없으면 get{}는 생략할 수 있음
        }
        set(newValue) {  // 매개변수명은 newValue가 기본, (newValue)는 생략가능
            age = newValue + 1
        }
    }
    func display() {
        print("나이=\(age), 몸무게=\(weight)")
    }
    init(age: Int, weight: Double) {
        self.age = age
        self.weight = weight
    }
    init(age: Int) {  // 생성자 중첩
        self.age = age
    }
}
// 계산 프로퍼티 내에는 값을 리턴하는 getter 메서드, 값을 대입하는 setter 메서드
var lee: Man1 = Man1(age: 20, weight: 20.5)
lee.display()  // 나이=20, 몸무게=20.5
print(lee.manAge)  // 19, getter호출
lee.manAge = 3
print(lee.age)  // 4

// 생성자 중첩 : 매개변수의 개수와 자료형이 다른 같은이름의 함수 여러개 정의
// 매개변수가 다른 두 생성자를 통해 두가지 방법으로 인스턴스를 만들 수 있음
var lee1: Man1 = Man1(age: 5)  // 몸무게는 초기값을 가져온다
lee1.display()  // 나이=5, 몸무게=3.5


// Failable Initializers(실패 가능한 생성자 : init? init!) 일반적으로는 ? 많이 쓰임
// 오류 상황에 nil을 리턴하는 조건문이 있음
class Man2 {
    var age: Int
    var weight: Double
    func display() {
        print("나이=\(age), 몸무게=\(weight)")
    }
    init?(age: Int, weight: Double) {
        if age <= 0 {
            return nil
        }
        else {
            self.age = age
        }
        self.weight = weight
    }
}
// 그냥쓰면 오류남. 옵셔널형을 푸는 과정이 필요!
// 1-1. 옵셔널 형으로 선언 후(일반형으로 저장하면 오류)
var park: Man2? = Man2(age: 1, weight: 3.5)
// 1-2. 옵셔널 바인딩
if let park1 = park {
    park1.display()
}
// 2. 인스턴스 생성과 동시에 옵셔널 바인딩(자주 쓰임)
if let park2 = Man2(age: 2, weight: 5.5) {
    park2.display()
}
// 3. 인스턴스 생성하면서 바로 강제언래핑 : 매우 위험! (참고만하기) age가 음수거나 0이면 오류남
var park3: Man2 = Man2(age: 3, weight: 7.5)!
park3.display()
// 4. 옵셔널 인스턴스를 사용시 강제언래핑 : 매우 위험! (참고만하기)
var park4: Man2? = Man2(age: 4, weight: 10.5)
park4!.display()
