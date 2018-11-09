### Error handling



1. Simple Domain Error (단순 도메인 오류) 
    \- 명백하게 실패하도록 되어 있는 연산 또는 추측에 의한 실행 등으로 발생 

예) 1. 숫자가 아닌 문자로부터 정수를 파싱, 2. 빈 배열에서 어떤 요소를 꺼내는 동작 등 

\- 오류에 대한 자세한 설명이 필요하지 않으며 대개 쉽게 또 즉시 에러를 처리할 수 있음. 

\- Optional Value 등을 통해 Swift 에 잘 모델링되어 있어서 더 복잡한 솔루션이 필요 없음.  

 

2. Recoverable (복구 가능한 오류)  

\- 복잡한연산을수행하는도중실패가발생할수있지만사전에미리오류를합리적으로예측할수있는작업  예) 파일을 읽고 쓰는 작업, 네트워크 연결을 통해 데이터 읽기 등  

\- iOS 에서는 NSError 또는 Error 를 이용하여 처리  

\- 일반적으로 이런 오류의 무시는 좋지 않으며 위험할 수도 있으므로 오류를 처리하는 코드를 작성하는 것이 좋다.  

\- 오류 내용을 유저에게 알려주거나, 다시 해당 오류를 처리하는 코드를 수행하여 처리하는 것이 일반적  

 

3. Universal Error (범용적, 보편적 오류)  

- 시스템이나 어떤 다른 요인에 의한 오류 

- 이론적으로는 복구가 가능하지만, 어느 지점에서 오류가 발생하는 지 예상하기 어려움 

 

4. Logic Failure 

- Logic 에 대한 오류는 프로그래머의 실수로 발생하는 것으로 프로그램적으로 컨트롤할 수 없는 오류에 해당 
- 시스템에서 메시지를 남기고 abort()를 호출하거나 Exception 발생





=======

프로그램 동작 중 예상 가능한 오류가 발생했을 때 이를 감지하고 복구하기 위한 일련의 처리 과정



4 ways to handle errors



• Propagating Errors Using Throwing Functions
• Handling Errors Using Do-Catch
• Converting Errors to Optional Values
• Disabling Error Propagation

===

Propagating Errors

오류에 대한 처리를 코드의 다른 부분에서 처리하도록 throws 키워드를 명시적으로 선언
throws 키워드가 없을 때는 오류를 해당 함수 내에서 처리해야 함



```swift
// This function is not permitted to throw.
func foo() -> Int { }
// This functions are permitted to throw.
func bar() throws -> Int { }
func foo() throws { }
func bar(_ callback: () throws -> ()) throws { }
```





#### Throwing initializer

```swift
struct PurchasedSnack {
	let name: String
	init(name: String, vendingMachine: 		VendingMachine) throws {
	try vendingMachine.vend(itemNamed: 		name)
	self.name = name
  	}
}

```





```swift
let a: () -> () -> () // 인풋: 없음, 리턴타임: 인풋이 없고 리턴이 없는 클로저를 반환하는 변수
let b: () throws -> () -> ()
let c: () -> () throws -> ()
let b: () throws -> () throws -> ()  
```





#### throws function > non throws function





```swift
// OK
func cannotThrowFunction() -> Int { return 10 }
func canThrowFunction(_ generator: () throws -> Int) -> Void { }
canThrowFunction(cannotThrowFunction)
```



```swift
// Error 
func canThrowFunction() throws -> Int { return 10 }
func cannotThrowFunction(_ generator: () -> Int) -> Void { }
cannotThrowFunction(canThrowFunction)
```





#### Specifying Cleanup Actions

defer -  현재 코드 블럭이 종료되기 직전에 반드시 실행되어야 하는 코드 등록
해당 범위가 종료될 때까지 실행을 연기하며 소스 코드에 기록된 순서의 역순으로 동작



```swift
func processFile(filename: String) throws {
	if exists(filename) {
		let file = open(filename)
		defer {
			close(file)
		}
	while let line = try file.readline() {
	// Work with the file.
	}
        // close(file) is called here, at 		the end of the scope.
	}
}
```



# Grand Central Dispatch (GCD)



