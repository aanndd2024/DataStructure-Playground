//: [Previous](@previous)

import Foundation

func reverseString(string: String) -> String {
    var reverseString: String = ""
    
    for char in string {
        reverseString = String(char) + reverseString
    }
    return reverseString
}

print(reverseString(string: "Hello World"))

//: [Next](@next)
