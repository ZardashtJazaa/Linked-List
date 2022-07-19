import UIKit

var list = LinkedList<Int>()
//list.append(value: 1)
//list.append(value: 2)
//list.append(value: 3)
////list.getLinkedList
//print("before inserting \(list.getLinkedList)")
//
//var targetNode = list.findNodes(at: 1)!
//for _ in 1...3 {
//
//    list.insert(0, after: targetNode)
//
//}
//print(list.getLinkedList)
list.push(value: 5)
list.push(value: 4)
list.push(value: 3)
list.push(value: 2)
list.push(value: 1)
print("beofre removeAfter \(list.getLinkedList)")
let targetNode = list.findNodes(at: 2)
let removedValue = list.removeAfter(after: targetNode!)
print("The removed value is : \(removedValue)")
print("After the RemoveAfter \(list.getLinkedList) ")

