//Example of optional chaining
//This is the feature of the swift to handle the situation when any one of the refrence is nil to avoid run time error.
//With optional chaining, if any part of the chain is nil, the entire expression will evaluate to nil.

//Person class which hold the property of the residence class.
class Person {
    var name: String                    // Stored property to store the person's name
    var residence: Residence?           // Optional property to represent the person's residence
    
    init(name: String) {
        self.name = name
    }
}

class Residence {
    var address: Address?               // Optional property to represent the residence's address
    
    func printAddress() {
        if let address = address {
            print("Full Address is: \(address.fullAddress())")       // Printing the full address if it exists
        } else {
            print("No address available")       // Printing a message if the address is nil
        }
    }
}

struct Address {
    var street: String                  // Stored property to store the street name
    var city: String                    // Stored property to store the city name
    
    func fullAddress() -> String {
        return "\(street), \(city)"      // Computed property to return the full address
    }
}

let address = Address(street: "123 Main St", city: "New York")
let residence = Residence()
residence.address = address

let person = Person(name: "Rakesh")    // Creating a person instance with the name "Rakesh"

//person.residence = residence

// Accessing an optional property using optional chaining
let address1 = person.residence?.address    // Optional chaining to access the address property

// Calling a method using optional chaining
person.residence?.printAddress()           // Optional chaining to call the printAddress() method

print(address1 as Any)

//output: nil

//In code, we have a Person class with a residence property of type Residence?, and the Residence class has an address property of type Address?. The Address struct has a method fullAddress().

//When we try to access the address property using optional chaining (person.residence?.address),
//if any part of the chain is nil in this case, person.residence is nil, the entire expression will evaluate to nil.
//So, the address constant will be nil in this case.
