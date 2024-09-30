//: [Previous](@previous)

import Foundation

func drawTriangle() {
    for i in 1...5 {
        for i in 1...i {
            print("*", terminator: "")
        }
        print(" ")
    }
}
drawTriangle()

func drawPascalTriangle() {
    for i in 1...5 {
        for k in 0..<(5 - i) {
            print(" ", terminator: "")
        }
        for _ in 0..<(2 * i - 1) {
            print("*", terminator: "")
        }
        print()
    }
}
drawPascalTriangle()

//: [Next](@next)
