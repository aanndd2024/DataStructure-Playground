//: [Previous](@previous)

import Foundation

let arr = [2, 5, 6, 2, 6, 9, 7, 5 ,4 ,7 ,6]

func removeDuplicate(arr:[Int]) -> [Int] {
    var dict:[Int:Int] = [:]
    for key in arr {
        if let value = dict[key] {
            dict[key] = value + 1
        } else {
            dict[key] = 1
        }
    }
    print(dict)
    return Array(dict.keys)
}

print(removeDuplicate(arr: arr))
//: [Next](@next)
