//: [Previous](@previous)

import Foundation

func validParantheses(str:String) -> Bool {
    var charArry:[Character] = []
    
    for char in str {
        switch char {
        case "(", "{", "[":
            charArry.append(char)
        case ")":
            if !charArry.isEmpty && charArry.last == "("{
                charArry.removeLast()
            } else {
                return false
            }
        case "}":
            if !charArry.isEmpty && charArry.last == "{"{
                charArry.removeLast()
            } else {
                return false
            }
        case "]":
            if !charArry.isEmpty && charArry.last == "["{
                charArry.removeLast()
            } else {
                return false
            }
        default:
            return false
        }
    }
    return charArry.isEmpty
}

print(validParantheses(str: "({[})"))
       

//: [Next](@next)
