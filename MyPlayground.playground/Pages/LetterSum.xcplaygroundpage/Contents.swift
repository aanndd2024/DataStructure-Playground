//: [Previous](@previous)

import Foundation

func letterSum(str:String) -> Int {
    var sum = 0
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for (index,char) in alphabet.enumerated() {
        for c in str {
            if c == char {
                sum += index+1
            }
        }
    }
    return sum
}

print(letterSum(str: "abcde"))
//: [Next](@next)
