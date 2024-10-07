//: [Previous](@previous)

import Foundation

func findPrefix(strArr: [String]) -> String? {
    var prefixString:String = ""
    guard let firstElement = strArr.first else {
        return ""
    }
    for (index, char) in firstElement.enumerated() {
        if hasPrefix(prefixChar: char, indexOf: index, strArr: strArr) {
            prefixString = prefixString + String(char)
        } else {
            break
        }
    }
    return prefixString
}

func hasPrefix(prefixChar: Character, indexOf:Int, strArr:[String]) -> Bool {
    var result = 0
    for str in strArr where indexOf <= str.count-1 {
        if Array(str)[indexOf] == prefixChar {
            result += 1
        } else {
            break
        }
    }
    if result == strArr.count {
        return true
    }
    return false
}


let strings = ["flower", "flow", "flight"]
//Output: "fl"
print(findPrefix(strArr: strings))

//: [Next](@next)
