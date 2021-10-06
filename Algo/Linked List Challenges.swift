//Challenge 1: Print in reverse
//Create a function that prints the nodes of a linked list in reverse order. For example:
//1 -> 2 -> 3 -> nil
//
//// should print out the following:
//3
//2
//1
//Challenge 2: Find the middle node
//Create a function that finds the middle node of a linked list. For example:
//1 -> 2 -> 3 -> 4 -> nil
//// middle is 3
//
//1 -> 2 -> 3 -> nil
//// middle is 2
//Challenge 3: Reverse a linked list
//Create a function that reverses a linked list. You do this by manipulating the nodes so that they’re linked in the other direction. For example:
//// before
//1 -> 2 -> 3 -> nil
//
//// after
//3 -> 2 -> 1 -> nil
//Challenge 4: Merge two lists
//Create a function that takes two sorted linked lists and merges them into a single sorted linked list. Your goal is to return a new linked list that contains the nodes from two lists in sorted order. You may assume the sort order is ascending. For example:
//// list1
//1 -> 4 -> 10 -> 11
//
//// list2
//-1 -> 2 -> 3 -> 6
//
//// merged list
//-1 -> 1 -> 2 -> 3 -> 4 -> 6 -> 10 -> 11
//Challenge 5: Remove all occurrences
//Create a function that removes all occurrences of a specific element from a linked list. The implementation is similar to the remove(at:) method that you implemented for the linked list. For example:
//// original list
//1 -> 3 -> 3 -> 3 -> 4
//
//// list after removing all occurrences of 3
//1 -> 4

private func printInReverse<T>(_ node: Node<T>?) {
    guard let node = node  else {
        return
    }
    printInReverse(node.next)
    print(node.value)
}
func printInReverse<T>(_ list: LinkedList<T>) {
    printInReverse(list.head)
}
//
func getMiddle<T>(_ list: LinkedList<T>) -> Node<T>? {
    var slow = list.head
    var fast = list.head
    
    while let nextFast = fast?.next {
        fast = nextFast.next
        slow = slow?.next
    }
    
    return slow
}
//
