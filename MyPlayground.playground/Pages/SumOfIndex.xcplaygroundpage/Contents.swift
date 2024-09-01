//: [Previous](@previous)

import Foundation

/*:
 ***
 Find index of sum of array element to given sum.
 ***
 */
func findPairsOfGivenSum(arr:[Int], sum:Int) -> [(Int, Int)] {
    var result:[(Int, Int)] = []
    for i in 0..<arr.count {
        for j in i+1..<arr.count {
            if arr[i] + arr[j] == sum {
                result.append((i,j))
            }
        }
    }
    return result
}

let arrayElements = [2, 4, 6, 3, 1, 9]
let targetSum = 10
let pairs = findPairsOfGivenSum(arr: arrayElements, sum: targetSum)
print(pairs)
//: [Next](@next)

