//: [Previous](@previous)

import Foundation

//Write a function that converts the given string into its mirror image with the following rules:
//Mirror String Conversion Logic
//Lowercase letters 'a' to 'z' → mapped to 'Z' to 'A'
//Uppercase letters 'A' to 'Z' → mapped to 'z' to 'a'
//Digits '0' to '9' → kept as-is
//Other characters → ❌ throws an error

//Input: aBzZ19
//Mirrored: ZyAa19
//Error: Illegal character '#' found in input.

enum MirrorError: Error {
    case InvalidMirrorChar
}

func mirrorString(input:String) throws -> String {
    let lowerCaseMapping:[Character:Character] = ["a":"Z",
                                                  "b":"Y", "c":"X", "d":"W", "e":"V", "f":"U",
                                                  "g":"T", "h":"S", "i":"R", "j":"Q", "k":"P",
                                                  "l":"O", "m":"N", "n":"M", "o":"L", "p":"K",
                                                  "q":"J", "r":"I", "s":"H", "t":"G", "u":"F",
                                                  "v":"E", "w":"D", "x":"C", "y":"B", "z":"A"]
    let upperCaseMapping:[Character:Character] = ["A":"z",
                                                  "B":"y", "C":"x", "D":"w", "E":"v", "F":"u",
                                                  "G":"t", "H":"s", "I":"r", "J":"q", "K":"p",
                                                  "L":"o", "M":"n", "N":"m", "O":"l", "P":"k",
                                                  "Q":"j", "R":"i", "S":"h", "T":"g", "U":"f",
                                                  "V":"e", "W":"d", "X":"c", "Y":"b", "Z":"a"]
    
    var mirrorString = ""
    for char in input {
        if char.isLowercase, let mirroredChar = lowerCaseMapping[char] {
            mirrorString += String(mirroredChar)
        } else if char.isUppercase, let mirroredChar = upperCaseMapping[char] {
            mirrorString += String(mirroredChar)
        } else if char.isNumber {
            mirrorString += String(char)
        } else {
            throw MirrorError.InvalidMirrorChar
        }
    }
    return mirrorString
}

do {
    print(try mirrorString(input: "abc"))  // Output: "ZYX"
    print(try mirrorString(input: "XYZ"))  // Output: "cba"
    print(try mirrorString(input: "aBc123"))  // Output: "ZyX123"
    print(try mirrorString(input: "hello@world"))
} catch MirrorError.InvalidMirrorChar{
    print("Invalid character")
}



//: [Next](@next)
