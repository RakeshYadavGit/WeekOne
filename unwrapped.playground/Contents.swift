
// Create an optional string
//we create a optional variable when we are not sure whether we get the value or nil
//optionalString is optional that means it can be nil also.
let optionalString: String? = "Hello, World!"

// Forced unwrapping: Access the value of the optional string by force-unwrapping it with !
//we should use focred unwrapping only when we are sure about the value of the varible is not ging to be nil.
//forcedUnwrappedString get the value as "Hello, World!"
//Here no error going occured as optionalString contain the proper string value. But if it contain nil than the error going to occure.
let forcedUnwrappedString = optionalString!

// Print the forced unwrapped string
print("Forced Unwrapped String: \(forcedUnwrappedString)")

// Optional unwrapping: Use optional chaining to access the value of the optional string without force-unwrapping
//we can use Optional unwrapping to handle the nil value. And when the nil value comes we can assign the default value to handle the error.
//if the optionalString cantain nil then optionalUnwrappedString get the string value as "Default Value" without getting error.
let optionalUnwrappedString = optionalString ?? "Default Value"

// Print the optional unwrapped string
print("Optional Unwrapped String: \(optionalUnwrappedString)")

// Default unwrapping: Use optional binding to unwrap the optional string with a default value
//It is one of the better way of handling the optional value which can be nil.
//in if let, if the value is not nil then the value assign to the created variable and if block going to excute.
//But in case of the nil, else block going to be execute.
//In this case if block going to excute beacuse there is no nil value.
if let defaultUnwrappedString = optionalString {
    print("Default Unwrapped String: \(defaultUnwrappedString)")
} else {
    print("Optional String is nil. Using default value: N/A")
}

func processOptionalString(_ optionalString: String?) {
    // Guard let: Use guard statement to conditionally unwrap the optional string and assign it to a new variable.
    //difference between if let and guard let is, guard let assign value to the variable if there is no nil value. There is no if block which going to excute. But it will execute when there is nil value.
    // guard let is used with a function becuse there required to use the return statement.
    //guardedString get the value becuase there is no nil value.
    guard let guardedString = optionalString else {
        print("Optional String is nil. Exiting...")
        // If the optional string is nil, we exit the function
        return
    }

    // Print the guarded string
    print("Guarded String: \(guardedString)")

    // Continue with the rest of the code if the optional string is successfully unwrapped
}

// Example usage
processOptionalString("Hello, World!") // Optional string is not nil
processOptionalString(nil) // Optional string is nil




