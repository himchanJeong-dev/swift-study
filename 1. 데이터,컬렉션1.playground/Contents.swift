import UIKit


 // 기본 데이터 타입 //

// Int : 64비트의 정수형
var someInt = -100
someInt = 100

// UInt : 부호가 없는 64비트의 정수형
var someUInt:UInt = 150
someUInt = 170

// 32비트의 부동소수점 //
var someFloat: Float = 1.1
someFloat = 1
print(someFloat)

// 64비트의 부동소수점 //
var someDouble:Double = 1.314
someDouble = 1.555

// Bool : true, false값을 가진다 //
var someBool:Bool = true
someBool = false

// Character : 문자 //
var someCharacter: Character = "가"
someCharacter = "A"

// String : 문자열 //
var someString: String = "안녕하세요"
someString = "반갑습니다"

//Any : 모든 타입을 지칭하는 키워드 //


// 컬렉션 타입 //

 // 축약임. 축약아니면  var numbers: Array<Int> = Array<Int>() //
var numbers: [Int] = []
numbers.append(1)
numbers.append(2)
numbers.append(3)
numbers[0]
numbers[1]
numbers.insert(10, at: 1)
numbers
print(numbers)
numbers.remove(at: 0)
numbers

// Dictionary 키와 값, 초기값 설정 가능 //
var dic: [String: Int] = [:]
dic["김영희"] = 28
dic["김철수"] = 50
dic["힘힘이"] = 29
dic
print(dic)
dic.removeValue(forKey: "김철수")
dic

// Set 축약없음 데이터는 무작위저장, 중복값 불가능, remove는 넘버를 넣는다//
var set: Set = Set<Int>()
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set
set.remove(20)
set
print(set)

 /*
 func 함수명(파라미터 이름: 데이터 타입) -> 반환 타입 {
    return 반환 값
 }
 */
func sum(a: Int, b: Int) -> Int {
    return a+b
}

sum(a: 5, b: 3 )


func hello() -> String {
    return "hello"
}

hello()
hello()

