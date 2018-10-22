# High Order Function

고차함수란?

- 하나 이상의 함수를 ㅇ니자로 취하는 함수
- 함수를 결과로 반환하는 함수



## First-class citizen

1급 객체 (first-class citizen)

- 변수나 데이터에 할당할수 있어야 한다.
- 객체의 인자로 넘길수 있어야 한다
- 객체의 리턴값으로 리턴할수 있어야 한다

``` swift
func firstCitizen() {
    print("function call")
}
```

```swift
func(_ parameter: @escaping () -> ()) -> (()-> (())) {
    return parameter
}
let returnValue = function(firstCitizen)
returnValue()	
```





```swift
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
var runningTotal = 0
func incrementer() -> Int {
runningTotal += amount
return runningTotal
}
return incrementer // 리턴값
}
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
var runningTotal = 0
return {
runningTotal += amount
return runningTotal
}
}
let incrementer = makeIncrementer(forIncrement: 7) // 변수에 할당
```



```swift
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
var runningTotal = 0
func incrementer() -> Int {
runningTotal += amount
return runningTotal
}
return incrementer // 리턴값
}
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
var runningTotal = 0
return {
runningTotal += amount
return runningTotal
}
}
let incrementer = makeIncrementer(forIncrement: 7) // 변수에 할당
print(incrementer())  // 7
print(incrementer())  // 14	
```



## High-order fuctions in swift

- forEach

  - 컬렉션의 각 요소(element)에 동일 연산을 적용하며, 반환값이 없는 형태

  ```swift
  let arr: [Int] = [1,2,3,4,5]
  arr.forEach{
      print($0 * 5) 
  } // [5,10,15,20,25]
  ```

- Map

  - 컬렉션의 각 요소 (element)에 동일 연산을 적용하여, 변형된 새 컬렉션 반환

  ```
  let arr: [Int] = [1,2,3,4,5]
  arr.map{
      return $0 * 5
  } // [5,10,15,20,25]
  ```

- filter

  - 컬렉션의 각 요소를 평가하여 조건을 만족하는 요소만을 새로운 컬렉션으로 반환

  ```
  
  ```




- reduce
  - 컬렉션의 각 요소들을 결합하여 단 하나의 타입으로 반환 ex> int, string

```swift
import Foundation

Array(1...100).reduce(0, +) // 5050 0+1 , 1+2, 2+3 .... 

```







- flatMap
  - 중첩된 컬렉션을 하나의 컬렉션으로 병함
  - 요소 중 옵셔널이 있을 경우제거(swift 4.1에서 compactMap으로 변경)

```


```





Agile 

폭포수 waterfall process

기획 (완료) -> 개발 계획 (완료) -> 개발(완료) -> 테스트(완료)

Agile 

점진적으로 발전 시켜지는 모델. 

