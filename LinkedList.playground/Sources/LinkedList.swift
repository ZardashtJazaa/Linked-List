import Foundation

public struct LinkedList<V> {
    //typealias Node = LLNode<V>
    public var head: LLNode<V>?
    public var tail: LLNode<V>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public init() {}
    //MARK: Push
    public mutating func push(value:V) {
        //print("this is:\(head)")
        head = LLNode(value: value, next: head)
        
        if tail == nil {
            print("tail is now = head")
            tail = head
        }
    }
    
    //MARK: Pop
    public mutating func pop() -> V? {
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
    
    //MARK: RemoveLast
    public mutating func removeLast() -> V? {
        
        guard let head = head else {
            return nil
        }
        guard head.next != nil else {
            return pop()
        }
        
        var previouse = head
        var currnet = head
        
        while let next = currnet.next {
            previouse = currnet
            currnet   = next
        }
        previouse.next = nil
        tail = previouse
        return currnet.value

        
    }
    
    //MARK: RemoveAfter
    
    public mutating func removeAfter(after node: LLNode<V>) -> V {
        
        defer {
            
            if node.next === tail {
                tail = node
            }
            node.next = node.next?.next
        }
        return node.next!.value
        
    }
    
    //MARK: Append
    public mutating func append(value:V) {
        
        guard !isEmpty else {
            push(value: value)
            return
        }
        tail!.next = LLNode(value: value)
        tail = tail!.next
        
    }
    //MARK: FindNodes
     public func findNodes(at index: Int) -> LLNode<V>? {
         
         var currentNode =  head
         var currentIndex = 0
         
         while currentNode != nil && currentIndex < index {
             currentNode = currentNode?.next
             currentIndex += 1
         }
         
         return currentNode
         
    }
    //MARK: InsertNodes
    public mutating func insert(value addValue:V , after node: LLNode<V>) -> LLNode<V> {
        
        guard tail !== node else {
            append(value: addValue)
            return tail!
        }
        
        node.next = LLNode(value: addValue, next: node.next)
        return node.next!
        
    }
    
}



extension LinkedList {
    
    
    public var getLinkedList: String {
        
        guard let head = head else {
            return "LinkedList Empty!"
        }
        return "\(head.getValue)"
        
    }
    
}
