//: [Previous](@previous)

import Foundation

class MyViewModel {
    fileprivate var internalValue: Int = 0

    fileprivate func calculateResult() -> Int {
        return internalValue * 2
    }

    func getPublicResult() -> Int {
        return calculateResult() + 10
    }
}

// 🛠 Simulated Unit Tests in Playground
let viewModel = MyViewModel()

// Test default internalValue
assert(viewModel.internalValue == 0, "❌ internalValue should start at 0")

// Modify and test `calculateResult`
viewModel.internalValue = 5
assert(viewModel.calculateResult() == 10, "❌ calculateResult should return 10 when internalValue is 5")

// Test `getPublicResult`
assert(viewModel.getPublicResult() == 20, "❌ getPublicResult should return 20 when internalValue is 5")

print("✅ All Playground tests passed successfully!")


//: [Next](@next)
