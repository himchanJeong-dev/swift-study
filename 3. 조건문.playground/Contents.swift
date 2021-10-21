import UIKit

// if 조건문
let someNumber = 100
if someNumber < 100 {
    print("100 미만")
} else if someNumber == 100 {
    print(100)
} else {
    print("100 이상")
}

let age = 20
if age < 19 {
    print("미성년자")
} else if age > 19 {
    print("성년자")
} else {
    print("열아홉살")
}


// switch 조건문 - 디폴트는 항상 넣어야 함  ..< 미만 ... 이상 이하 Int.max 정수끝까지, 조건이 많으면 switch문 쓰기
let temperature = 30
switch temperature {
case -10..<5:
    print("겨울입니다")
case 5...20:
    print("봄가을입니다")
case 21...Int.max:
    print("여름입니다")
default:
    print("이상기온입니다")
}

// where절 사용하기(부가적인 조건을 추가하기 위하여 사용 switch, catch, if, while, guard, for 등에서 사용)
switch temperature {
case 0...10 where temperature % 2 == 0:
    print("추움 and 짝수")
case 11...40 where temperature % 2 == 0:
    print("더움 and 짝수")
default :
    print("그 외")
}

// fallthrough : 아래로 계속 내려가게 하려면 사용한다, 걸린곳부터 밑으로 쭉 입력된다
switch temperature {
case -10..<5:
    print("겨울입니다")
    fallthrough
case 5...20:
    print("봄가을입니다")
    fallthrough
case 21...Int.max:
    print("여름입니다")
    fallthrough
default:
    print("이상기온입니다")
}  // 여름입니다 이상기온입니다

