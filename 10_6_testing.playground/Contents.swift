import UIKit

var str = "Hello, playground"
//두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)
//문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
//학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
//세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)
//특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")
//윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)


func addFunc(_ firstValue: Int,_ secondValue: Int) {
    
    var addValue = 0
    addValue = firstValue + secondValue
    print(addValue)
    
}

addFunc(15,15)

func testSameValue(_ String1: String,_ String2: String) -> Bool {
    
    if String1 == String2 {
        return true
        
    } else {
        return false
    }
    
//    switch self.String1 {
//    case let a where String1 == String2:
//        return true
//    default:
//        return false
//        
//    }
}


//학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)

func gradeConverter(_ grade: Double) -> String {
    
//    if grade == 4.5 {
//        return "A+"
//    } else if grade > 4.0 {
//        return "A"
//
//    } else if grade > 3.5 {
//        return "B+"
//    } else {
//        return "you fail"
//    }
//
//
    var inputGrade = 0.0
    inputGrade = grade
    
    switch inputGrade {
    case 4.5:
        return "A+"
    case 4.0..<4.5:
        return "A"
    case 3.5..<4.0:
        return "B+"
    default:
        return "this is not a grade"
        
    }
    
    
    
}

gradeConverter(4.5)
//세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)

func threeMultiple(_ number1: Int,_ number2: Int,_ number3: Int) -> Bool {
    
    var threeMultiple = 0
    threeMultiple = number1 * number2 * number3
    
    switch threeMultiple {
    case _ where threeMultiple > 0:
            return true
    case _ where threeMultiple < 0:
            return false
        
        default:
           return true
        
    }
 
}
threeMultiple(1, 3, 5)
threeMultiple(-1, 3, 5)

//특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")
//윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)


func changeMonthNumberToMonthString(_ Month: Int) {
    
    var numberMonth = 0
    numberMonth = Month
    
    switch numberMonth {
    case 1:
        print("January")
    case 2:
        print("Feb")
    case 3:
        print("March")
    case 4:
        print("April")
    case 5:
        print("May")
    case 6:
        print("June")
    case 7:
        print("July")
    case 8:
        print("August")
    case 9:
        print("September")
    default:
        print("Cannot Convert to Month")
    }
}
changeMonthNumberToMonthString(12)

//윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)



func lunarYearCheck(_ year: Int) {
    
    var checkYear = 0
    checkYear = year
    
    switch checkYear {
    case _ where (year % 4 == 0 || year % 400 == 0):
        print("it is a lunar year")
    
    case _ where year % 100 == 0:
        print("it is not a lunar year")
    default:
        print("it is not a lunar year")
    }
    
    
    
}

lunarYearCheck(100)




/***************************************************
 자연수 두 개를 입력받아 첫 번째 수를 두 번째 수만큼 제곱하여 반환하는 함수
 (2, 5 를 입력한 경우 결과는 2의 5제곱)
 ***************************************************/


func factorial(_ baseNumber: Int,_ factorialNumber: Int) {
    
    var result = 1
    
    for _ in 1...factorialNumber{
        
        result = baseNumber * result
        
    }
    
    print(result)
    
    
}


factorial(2, 2)

/***************************************************
 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
 ***************************************************/

func printCommonForThreeAndFive() {
    
    for i in 1...100{
        
        
        if i % 3 == 0 && i % 5 == 0 {
           print(i)
        }
        
    }
    
}
printCommonForThreeAndFive()












