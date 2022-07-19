import Foundation

public class LLNode<V> {
    
    var value: V
    var next: LLNode?
    
    init(value:V , next: LLNode? = nil) {
        self.value = value
        self.next = next
    }
    
}



extension LLNode {
    
    public var getValue : String {
        var lastNode = 0
       // print("one time \(value)")
        
        guard let node = next else  {
           // print(next)
            lastNode = value as! Int
            
           //print("from our var: \(lastNode)")
            return "\(value)"
        }
        //print("hi")
        return "\(value) -> "  +  "\(node.getValue)" + " "
    }
    
    
}

//public func makeNode() {
//
//    let node1 = Node(value: 1)
//    let node2 = Node(value: 2)
//    let node3 = Node(value: 3)
//    let node4 = Node(value: 4)
//
//    node1.next = node2
//    node2.next = node3
//    node3.next = node4
//    print(node1.getValue)
//
//}
