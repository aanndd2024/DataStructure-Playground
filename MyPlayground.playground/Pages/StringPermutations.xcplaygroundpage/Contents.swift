//: [Previous](@previous)

import Foundation

func getRemaining(from array: [Character], removingAt i: Int) -> [Character] {
    var temp = array
    temp.remove(at: i)
    return temp
}

func uniquePermutations(of array: [Character]) -> Set<String> {
    // Base case: if array is empty, return a set with empty string
    if array.isEmpty {
        return [""]
    }

    var result = Set<String>()

    for i in 0..<array.count {
        let char = array[i]
        let remaining = getRemaining(from: array, removingAt: i)
        let subPerms = uniquePermutations(of: remaining)
        for perm in subPerms {
            result.insert(String(char) + perm)
            print("Resule", result)
        }
    }
    return result
}
let input = Array("abc")
print(uniquePermutations(of: input))
//: [Next](@next)
