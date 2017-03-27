//ReverseLinkedList - Reverse a Singly-Linked List

import UIKit

// What we have
// 1->2->3->nil

// What we want
// nil<-1<-2<-3

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let lastNode = Node(value: 3, next: nil)
let middleNode = Node(value: 2, next: lastNode)
let firstNode = Node(value: 1, next: middleNode)

func printList(head: Node?) {
    print("Printing out Linked List: ")
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

printList(head: firstNode)

func reverseList(head: Node?) -> Node? {
    var currentNode = head
    var prev: Node?
    var next: Node?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        
        print("Prev: \(prev?.value ?? -1), Current: \(currentNode?.value ?? -1), Next: \(next?.value ?? -1)")
        
        prev = currentNode
        currentNode = next
    }
    
    return prev
}

let myReversedList = reverseList(head: firstNode)

printList(head: myReversedList)