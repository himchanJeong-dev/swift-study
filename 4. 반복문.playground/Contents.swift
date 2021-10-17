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
