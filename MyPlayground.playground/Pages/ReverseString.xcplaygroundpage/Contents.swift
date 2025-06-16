//: [Previous](@previous)

import Foundation

//Input: How are you
//Output: uoy era woH

let str = "How are you"

func reverseString(string: String) -> String {
    var reverseString: String = ""
    
    for char in string {
        reverseString = String(char) + reverseString
    }
    return reverseString
}

print(reverseString(string: str))

//Input: How are you
//Output: woH era uoy

func reverseString(str:String) -> String {
    var resultStr = ""
    for word in str {
        resultStr = String(word) + resultStr
    }
    
    return resultStr
}

let strArr = str.components(separatedBy: .whitespaces)

var resultstring = ""
for str in strArr {
    resultstring = resultstring + reverseString(str: str) + " "
}
print(resultstring)

//Input: How are you
//Output: woH era uoy

let str1 = "How are you"

func reverseString1(str:String) -> String {
    var resultStr = ""
    var word = ""
    for char in str {
        if char.isWhitespace {
            resultStr = resultStr + reverseWord(str: word) + " "
            word = ""
        } else {
            word = word + String(char)
        }
    }
    resultStr = resultStr + reverseWord(str: word)
    return resultStr
}

func reverseWord(str:String) -> String {
    var resultStr = ""
    for char in str {
        resultStr = String(char) + resultStr
    }
    return resultStr
}

print(reverseString(str: str))
//: [Next](@next)
