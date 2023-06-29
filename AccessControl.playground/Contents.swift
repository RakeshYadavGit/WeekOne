
//Example of the access control.
//There are file access control provide by the swift
//1. open
//2. public
//3. Internal
//4. fileprivate
//5. private

// Define an open class with an open property and an open method
// If we are working with multiple modules and we want to inhert and modfiy the function of a class of one module to any other module we need to use the open.
// Open provide the high level of accessibility.
open class OpenClass {
    open var openProperty: String // Open property that can be overridden
    
    public init() {
        self.openProperty = "" // Initialize the open property
    }
    
    open func openMethod() {
        print("This is an open method.") // Open method that can be overridden
    }
}

// Public access - Accessible from anywhere, including external modules
// Public class with public property and public method
//main diffrence between public and open is that public element can be access outside the module but they can not be modify by using ovrriding concept. when we are using the the mutiple module.
public class MyClass {
    public var publicProperty: Int
    
    public init() {
        self.publicProperty = 0
    }
    
    public func publicMethod() {
        print("This is a public method.")
    }
}

// Internal access - Accessible within the same module, not outside
// Internal struct with internal property and internal method
//it is apply by default if we does not specifies with any access control.
internal struct MyStruct {
    internal var internalProperty: String
    
    internal init() {
        self.internalProperty = ""
    }
    
    internal func internalMethod() {
        print("This is an internal method.")
    }
}

// file private access - Accessible within the same source file only

fileprivate class PrivateClass {
    fileprivate var privateProperty: Double
    
    fileprivate init() {
        self.privateProperty = 0.0
    }
    
    fileprivate func privateMethod() {
        print("This is a private method.")
    }
}

// Private class with private property and private method
//privte have the high level of the restriction.
private class MyPrivateClass {
    private var privateProperty: Double
    
    private init() {
        self.privateProperty = 0.0
    }
    
    private func privateMethod() {
        print("This is a private method.")
    }
}




// Example usage

let myOpen = OpenClass()
myOpen.openProperty = "Hello World"
myOpen.openMethod()
let myObject = MyClass()
myObject.publicProperty = 10 // Accessible because MyClass and publicProperty are public
myObject.publicMethod() // Accessible because MyClass and publicMethod are public

var myStruct = MyStruct()
myStruct.internalProperty = "Internal" // Accessible because MyStruct and internalProperty are internal
myStruct.internalMethod() // Accessible because MyStruct and internalMethod are internal

private let privateObject = PrivateClass() // Create instance of PrivateClass
privateObject.privateProperty = 3.14 // Access and modify private property
privateObject.privateMethod() // Call private method

//let myPrivateObject = MyPrivateClass() // Error: MyPrivateClass is private and cannot be accessed outside its scope

