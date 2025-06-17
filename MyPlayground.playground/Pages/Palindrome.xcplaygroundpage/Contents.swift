//: [Previous](@previous)

import Foundation

//write a function to find the longest palindrome and the shortest palindrome in the descending order in the given string
//Input: "Madam Arora teaches Malayalam abas"
//Output: Malayalam

func isPalindrome(str:String) -> Bool {
    let charArr = Array(str.lowercased())
    var left = 0, right = charArr.count-1
    while left < right {
        if charArr[left] != charArr[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

print(isPalindrome(str: "ABa"))

let str = "Madam Arora teaches Malayalam abas"
let arrayOfStr = str.components(separatedBy: .whitespaces)
var dict:[String:Int] = [:]
for word in arrayOfStr {
    if isPalindrome(str: word) {
        dict[word] = word.count
    }
}
let maxPalindrome = dict.max { $0.value < $1.value }

print(maxPalindrome)
//: [Next](@next)
