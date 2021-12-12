import UIKit

// for문
for i in 1...5 {
    print(i)
}

let array = [1, 2, 3, 4, 5]
for test in array {
    print(test)
}

// 딕셔너리 타입은 튜플 타입으로 작성  key:value
let test1 = ["Lee": 29, "Kim": 28, "Park": 10]
for (name, age) in test1 {
    print("\(name): \(age)")
}


// while문
var testWhile1 = 5
while testWhile1 < 7 {
    testWhile1 += 1
}
print(testWhile1)


// repeat : while 구문은 repeat를 최소1번 실행하고 while을 실행한다 //
var testRepeat1 = 8
repeat {
    testRepeat1 += 2
} while testRepeat1 < 7
print(testRepeat1)


// continue문 : 반복문에서 continue문 이후의 모든 코드를 건너뛰고 반복문의 상단 시작위치로 돌아감
for i in 1...10 {
    if i % 2 == 0 { // 짝수면 continue밑의 코드 실행하지 않고 넘어간다
        continue
    }
    print(i, terminator: "")  // 13579
}


// 반복문에서 빠져나오기 (break)
for i in 1..<10 {
    if i > 5 {
        break
    }
    print(i)
}


// guard문 : 조건식이 거짓이면 실헹
// 표현식이 거짓으로 판단될 경우에 수행될 else절을 반드시 포함해야 한다
// else절에 속한 코드는 현재의 코드 흐름을 빠져 나갈 수 있는 구문(return, break, continue, throw)을 반드시 포함해야 한다
func multiplyByTen(value: Int?) {
    guard let number = value, number < 10 else { // 조건식이 거짓일 때 실행
        print("수가 10보다 크다.")
        return
    }
    print(number*10)  // 조건식이 참일 때 실행
}
multiplyByTen(value: 20)  // 수가 10보다 크다(value값이 10보다 크기때문에 조건식이 거짓이 된다
multiplyByTen(value: 3)  // 30

// if let 과 guard let 비교하기
func printName(firstName: String, lastname: String?) {
    if let LName = lastname {
        print(LName, firstName)
    } else {
        print("성이 없습니다")
    }
    guard let Lname = lastname else {  // lastname이 nil이기 때문에 거짓
        print("성이 없습니다")
        return
    }
    print(Lname,firstName)
}
printName(firstName: "길동", lastname: nil)

