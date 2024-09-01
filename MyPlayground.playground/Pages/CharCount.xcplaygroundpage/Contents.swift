//: [Previous](@previous)

import Foundation
/*:
 __Swift Program to Find the Frequency of Characters in a String__
 */
func countEachCharacter(in str: String) -> [Character: Int] {
    var charCountDict: [Character: Int] = [:]
    
    for char in str.uppercased() {
        if let count = charCountDict[char] {
            charCountDict[char] = count+1
        } else {
            charCountDict[char] = 1
        }
    }
    
    return charCountDict
}

// Example usage:
let str = "This is Swift Tutorial"
let counts = countEachCharacter(in: str)

// Print the result
for (char, count) in counts {
    print("\(char): \(count)")
}

/*:
 __Find the first unique character from a string in Swift__
 */
func firstUniqueCharacter(in string: String) -> Character? {
    var charCountDict: [Character: Int] = [:]
    
    for char in string.uppercased() {
        if let count = charCountDict[char] {
            charCountDict[char] = count+1
        } else {
            charCountDict[char] = 1
        }
    }
    // Find the first character with a count of 1
    for char in string {
        if let count = charCountDict[char], count == 1 {
            return char
        }
    }
    return nil
}

let input = "ABBCDEF"
if let result = firstUniqueCharacter(in: input) {
    print("The first unique character is \(result)") // Output: A
} else {
    print("No unique character found")
}

/*:
 __Find the most common element in an Array in Swift__
 */
func mostCommonElement<T:Hashable>(inputArr:[T]) -> T? {
    var frequencyDict:[T:Int] = [:]
    for item in inputArr {
        if let count = frequencyDict[item], count > 0 {
            frequencyDict[item] = count+1
        } else {
            frequencyDict[item] = 1
        }
    }
    print(frequencyDict)
    let maxCount = frequencyDict.values.max()
    for (key,value) in frequencyDict {
        if value == maxCount {
            return key
        }
    }
    return nil
}
let inputArr = [2,4,7,3,5,9,2,4,7,2]
if let mostCommon = mostCommonElement(inputArr: inputArr) {
    print("Most common element:\(mostCommon)")
}

let inputArrString = "Original String hello world"
if let mostCommon = mostCommonElement(inputArr: Array(inputArrString.uppercased())) {
    print("Most common element:\(mostCommon)")
}

//: [Next](@next)
