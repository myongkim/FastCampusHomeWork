import UIKit


class Node {
    let value: String
    var next: Node?
    init(value: String) {
        self.value = value
    }
}

// stack head -> tail: use tail instead of tail

class LinkedList {
    
    var head: Node?
    
    private var lastNode: Node?
    var isEmpty: Bool {
        return head == nil
    }
    var size: Int {
        return 0
    }
   
    func push(node: Node) {
        // Empty
        if isEmpty {
            head = node
            
        } else {
            head?.next = nil
            
        }
        
        // else
        
        
    } // 데이터 삽입
    
    
    func pop() -> String? {
        
        return ""
        
    }  // 데이터 반출.
    
    func peek() -> String? {
        
        
        
        return ""
        
    } // 마지막 데이터 확인
}

let list = LinkedList()
list.isEmpty

