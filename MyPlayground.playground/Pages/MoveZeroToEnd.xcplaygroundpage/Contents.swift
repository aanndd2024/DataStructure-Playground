//: [Previous](@previous)
/*:
 ***
 **Move zero at the end of the array**
 ***
 */
import Foundation
func moveZerosToEnd(_ nums: inout [Int]) {
    var index = 0
    
    // Move all non-zero elements to the front of the array
    for num in nums where num != 0 {
        nums[index] = num
        index += 1
    }
    
    // Fill the remaining part of the array with zeros
    while index < nums.count {
        nums[index] = 0
        index += 1
    }
}
var array = [0, 1, 0, 3, 5]

moveZerosToEnd(&array)
print(array)

func moveZeroToEnd(arr: [Int]) -> [Int] {
    var index = 0
    var resultArr:[Int] = []
    
    for num in arr where num != 0 {
        resultArr.append(num)
        index += 1
    }
    
    for i in resultArr.count...arr.count-1 {
        resultArr.append(0)
    }
    
    return resultArr
}

var numArr = [0, 2, 0, 3, 7, 5, 0, 9]
print(moveZeroToEnd(arr: numArr))
//: [Next](@next)
