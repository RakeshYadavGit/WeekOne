//using class
class Calculator {
    
    // Method Overloading - Same method name with different parameters
    
    // Method to add two integers
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    // Method to add two double numbers
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    // Method to concatenate two strings
    func add(_ a: String, _ b: String) -> String {
        return a + b
    }
}

// Creating an instance of the Calculator class
let calculator = Calculator()

// Calling the overloaded methods
let sum1 = calculator.add(5, 10) // Output: 15
let sum2 = calculator.add(3.5, 2.7) // Output: 6.2
let concat = calculator.add("Hello, ", "Swift!") // Output: Hello, Swift!

print("sum of two integer number is \(sum1)")
print("sum of two double number is \(sum2)")
print("concat two string: \(concat)")


//using structure
struct ShapeCalculator {
    
    // Calculate the area of a square
    func calculateArea(sideLength: Double) -> Double {
        let area = sideLength * sideLength
        print("Area of square with side length \(sideLength) = \(area)")
        return area
    }
    
    // Calculate the area of a rectangle
    func calculateArea(length: Double, width: Double) -> Double {
        let area = length * width
        print("Area of rectangle with length \(length) and width \(width) = \(area)")
        return area
    }
    
    // Calculate the area of a circle
    func calculateArea(radius: Double) -> Double {
        let area = Double.pi * radius * radius
        print("Area of circle with radius \(radius) = \(area)")
        return area
    }
}

// Creating an instance of the ShapeCalculator struct
let shapeClculator = ShapeCalculator()

// Calculating the areas using the overloaded methods
shapeClculator.calculateArea(sideLength: 5.0)
shapeClculator.calculateArea(length: 4.0, width: 6.0)
shapeClculator.calculateArea(radius: 3.0) 


