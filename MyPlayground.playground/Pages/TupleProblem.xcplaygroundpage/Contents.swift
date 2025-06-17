//: [Previous](@previous)

import Foundation

//Write a function to print numbers from 1 to 100
//
//and if multiple
//multiple of 3-Anand
//Multiple of both- AnandYadav
//multiple of 5- Yadav

func problem(num:Int) {
    for i in 0...num {
        switch (i%3==0, i%5==0) {
        case (true, false):
            print("Anand")
        case (false, true):
            print("Yadav")
        case (true, true):
            print("AnandYadav")
        default:
            print(i)
        }
    }
}

problem(num: 100)
//: [Next](@next)
