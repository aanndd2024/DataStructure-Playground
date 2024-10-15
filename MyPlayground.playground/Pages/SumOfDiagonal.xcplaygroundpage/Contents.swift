//: [Previous](@previous)

import Foundation

func getSumOfDiagnols(arr:[[Int]]) -> Int {
    var sum = 0
    guard arr.count == 3 else { return 0 }
    for i in 0..<3 {
        sum += arr[i][i]
        sum += arr[i][3-i-1]
    }
    return sum - arr[1][1]
}

let matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

getSumOfDiagnols(arr: matrix)
//: [Next](@next)
