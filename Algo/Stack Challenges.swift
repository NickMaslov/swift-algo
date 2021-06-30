//Challenge 1: Reverse an Array
//Create a function that prints the contents of an array in reversed order.
//
//Challenge 2: Balance the parentheses
//Check for balanced parentheses. Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced. For example:
//// 1
//h((e))llo(world)() // balanced parentheses
//
//// 2
//(hello world // unbalanced parentheses”

func printInReverse<T>(_ array: [T]) {
    var stack = Stack<T>()
    
    for value in array {
        stack.push(value)
    }
    
    while let value = stack.pop() {
        print(value)
    }
}

func checkParentheses(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for character in string {
        if character == "(" {
            stack.push(character)
        } else if character == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    
    return stack.isEmpty
}
