//: [Previous](@previous)

import Foundation


func threeSum(_ nums: [Int]) -> [[Int]] {
    let resultSum = 0
    var resultIndex = [[Int]]()
    var resultIndexNum = [[Int]]()
    let sortedArr = arr.sorted()
    var sum = 0
    for (index, num) in sortedArr.enumerated() {
        var fisrt = num
        var firstIndex = index
        var secondIndex = index+1
        var thirdIndex = arr.count-1
        print("Index \(index): \(num)")
        
        while(secondIndex < thirdIndex) {
            sum = sortedArr[firstIndex] + sortedArr[secondIndex] + sortedArr[thirdIndex]
            if sum == resultSum {
                resultIndex.append([firstIndex, secondIndex, thirdIndex])
                resultIndexNum.append([sortedArr[firstIndex], sortedArr[secondIndex], sortedArr[thirdIndex]])
            }
            if sum > resultSum {
                thirdIndex -= 1
            } else {
                secondIndex += 1
            }
        }
    }
    print(resultIndexNum)
    return resultIndex
}

let arr = [-1, 0, 1, 2, -1, -4]

print(threeSum(arr))
