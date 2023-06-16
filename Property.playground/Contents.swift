//Example of Stored, Computed and Lazy

// Stored Property
//Stored property is constant or variable
//var is used for variable stored properties, which can be modified after initialization.
//let is used for constant stored properties, which cannot be modified once initialized.
struct Rectangle {
    var width: Double // Stored property to store the width of the rectangle
    var height: Double // Stored property to store the height of the rectangle
    
    var area: Double { // Computed property to calculate the area of the rectangle
        return width * height
    }
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

let rectangle = Rectangle(width: 5.0, height: 3.0)
print("Area: \(rectangle.area)") // Print the calculated area of the rectangle


// Computed Property
// computed value are those value which are get by the calcultion.
//circumference is computed property because it value get by the calculation.
struct Circle {
    var radius: Double // Stored property to store the radius of the circle
    
    var circumference: Double { // Computed property to calculate the circumference of the circle
        return 2 * Double.pi * radius
    }
    
    init(radius: Double) {
        self.radius = radius
    }
}

let circle = Circle(radius: 2.5)
print("Circumference: \(circle.circumference)") // Print the calculated circumference of the circle


// Lazy Property
//lazy keyword is required to create the lazy property
class Rectangle1 {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    lazy var area: Double = {
        return width * height
        // The area property is a lazy property because the calculation of the area
        // is deferred until the property is accessed for the first time. The closure
        // used for initialization is only executed once.
    }()
}

let rectangle1 = Rectangle1(width: 10.0, height: 5.0)
print(rectangle1.area)






