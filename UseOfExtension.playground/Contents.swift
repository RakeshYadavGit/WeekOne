//Example of Extension
//Extension is used to add the extra functionality in the existing class, eum, struct.
//The main difference subclass and extension is that in subclass we modify the exisiting property's based on the requirements but in extension we cannot modify anything.


// Extension on Int to add additional functionality
//two methods are added into the Int. It will work as like a default Int but have two extra features.
extension Int {
    // Method to calculate the square of an integer
    func square() -> Int {
        return self * self
    }
    
    // Property to check if the integer is even
    var isEven: Bool {
        return self % 2 == 0
    }
}

// Function that takes an integer and performs operations using the extension
func performOperationsOnNumber(_ number: Int) {
    let squaredNumber = number.square() // Calling the square() method on the number
    let isNumberEven = number.isEven // Accessing the isEven property on the number
    
    // Printing the results
    print("The square of \(number) is \(squaredNumber)")
    print("Is \(number) even? \(isNumberEven ? "Yes" : "No")")
}

// Example usage
let number = 5
performOperationsOnNumber(number)
