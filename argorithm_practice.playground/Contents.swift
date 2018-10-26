import UIKit

var input = [5, 6, 1, 3, 10, 2, 7, 14, 9]


func bubbleSort(input: [Int]) -> [Int] {

    var isSwap = true
    var sortedArray: [Int] = input
    
    while isSwap == true {
        isSwap = false
        
        for index in 1..<sortedArray.count {
            if sortedArray[index] < sortedArray[index - 1] {
                sortedArray.swapAt(index - 1, index)
                isSwap = true
            }
        }
    }
    return sortedArray
}

//bubbleSort(input: input)

func bubbleSort1(input: inout [Int]) {
    
    for i in 1..<input.count {
        print("\(i):", input)
        
        for idx in 0..<input.count - 1 {
            if input[idx] > input[idx + 1]{
                input.swapAt(idx, idx + 1)
            
            }
        }
    }
    
}

//bubbleSort1(input: &input)

func bubbleSort2(input: inout [Int]) {
    
    for i in 1..<input.count {
        print("\(i):", input)
        var isSorted = true
        
        for idx in 0..<input.count - 1 {
            if input[idx] > input[idx + 1]{
                input.swapAt(idx, idx + 1)
                isSorted = false
            }
        }
        guard !isSorted else { break }
    }
    
}

//bubbleSort2(input: &input)


func selectionSort(input: inout [Int]){
    

        for i in 0..<input.count - 1 {
            var k = i
            for j in i + 1..<input.count where input[j] < input[k] {
                k = j
            }
            if k != i {
                input.swapAt(k, i)
            
        }
    }
    
}

//selectionSort(input: &input)


func selectionSort2(_ array: [Int]) {
   // array를 받아서 array로 만든다.
    var array = array
    
    // arrry.count로 array의 배열을 돌린다. 이때 돌리는 이름을 i라고 칭한다.
    for i in 0..<array.count {
        
        // 윗 for를 돌릴때 처음은 i+1 즉 0+1 이 되어 1이 되고 첫번째 가장 낮은 숫자가 제일 먼저 array에 들어온다.
        // 그 다음 번에 돌릴때는 array첫번째 숫자는 의미가 없기 때문에 2번째 숫자를 찾는것이다. i+1을 통해서
        for j in i+1..<array.count {
            
            if array[j] < array[i] {
                
                (array[j], array[i]) = (array[i], array[j])
                
            }
        }
    }
    print(array)
}
selectionSort2(input)


// insertion sort

func insertionSort(array: [Int]) {
    var array = array
    
    
    
    
    
}





















