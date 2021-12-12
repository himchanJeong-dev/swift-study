import UIKit

// 기본 데이터 타입

// Int : 64비트의 정수형
var someInt = -100
someInt = 100

// UInt : 부호가 없는 64비트의 정수형(음수 안됨)
var someUInt:UInt = 150
someUInt = 170

// Float : 32비트의 부동소수점
var someFloat: Float = 1.1
someFloat = 1
print(someFloat)

// Double : 64비트의 부동소수점
var someDouble:Double = 1.314
someDouble = 1.555

// Bool : true, false값을 가진다
var someBool:Bool = true
someBool = false

// Character : 문자
var someCharacter: Character = "가"
someCharacter = "A"

// String : 문자열
var someString: String = "안녕하세요"
someString = "반갑습니다"

//Any : 모든 타입을 지칭하는 키워드



// 컬렉션 타입

// Array : 밑에는 축약임. var numbers: Array<Int> = Array<Int>()
var numbers: [Int] = []
numbers.append(1)
numbers.append(2)
numbers.append(3)
// 넘버스의 첫번째 배열에 접근(첫번째는 0부터 시작한다)
numbers[0]
numbers[1]
numbers.insert(10, at: 1)
numbers
print(numbers)
numbers.remove(at: 0)
numbers

var icecreammenu: Array<String> = Array<String>()
icecreammenu.append("바람과 함께 사라지다")
icecreammenu.append("민트 초콜릿 칩")
icecreammenu.append("스노우 모찌")
icecreammenu.append("체리 쥬빌레")
icecreammenu.count
icecreammenu
icecreammenu.remove(at: 2)
icecreammenu.count
icecreammenu
print(icecreammenu)

/* Dictionary : 키와 값! 초기값을 넣는 것도 가능하다
var anyDic: Dictionary<String, Any> = Dictonary[String: Any]() */
var icecreamPrice: [String: Int] = [:]
icecreamPrice["싱글 레귤러"] = 3200
icecreamPrice["파인트"] = 8200
icecreamPrice["쿼터"] = 10000
icecreamPrice["패밀리"] = 22000
icecreamPrice
icecreamPrice.removeValue(forKey: "쿼터")
icecreamPrice
icecreamPrice["패밀리"] = nil
icecreamPrice

// Set 축약없음 데이터는 무작위저장, 중복값 불가능, remove는 삭제할 값을 넣는다//
var set: Set = Set<Int>()
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set
set.remove(30)
set

let sweetFlavor: Set<String> = ["민초칩" , "베리베리" , "바닐라" , "사빠딸" , "체리"]
let bestFlavor: Set<String> = ["베리베리" , "사빠딸" , "바람과" , "엄마외계인" , "체리"]
//합집합
let unionFlavor = sweetFlavor.union(bestFlavor)
//정렬 숫자순, 가나다순
let sortedUnion = unionFlavor.sorted()
//교집합 : 겹치는 부분만
let intersectionFlavor = sweetFlavor.intersection(bestFlavor)
//차집합 : 스윗한 맛에서 베스트가 겹치지 않은 부분만
let subtractingFlavor = sweetFlavor.subtracting(bestFlavor)
