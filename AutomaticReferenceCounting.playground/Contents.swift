//Example of Automaic Refrence Counting
//Automatic Reference Counting is a memory management mechanism used to automatically track and manage the allocation and deallocation of objects in memory.
//It ensures that objects are kept in memory as long as they are being used and are automatically deallocated when they are no longer needed.

//This class basically used to Print the name of the person
class Person {
    var name: String //used to store the name of the person

    //This method is called automatically. During object creation.
    init(name: String) {
        self.name = name
        print("init method of the Person class is called")
    }

    //This is used to print the name of the Person
    func printMessage() {
        print("The name is: \(name)")
    }

    //This is called when ARC removing the object of person class from the memory.
    deinit {
        print("deinit method is called for Person class")
    }
}

var person1: Person?    // Declare an optional variable person1 of type Person. Becuase It required to nil to removed from the memory by the ARC
var person2: Person?    // Declare an optional variable person2 of type Person. Becuase It also required to nil to removed from the memory by the ARC.

if (1 == 1) {
    let person = Person(name: "Rakesh")    // Create a new instance of Person with name "Rakesh"
    person1 = person    // Assign the person instance to person1
    person2 = person    // Assign the person instance to person2
    person.printMessage()    // Call the printMessage method on the person instance
}

//At this moment both the object present in the main memory. ARC not remove this method yet
//SO if try to access or assign the value we can still do that.
person1?.name = "Nitin"    // Update the name property of person1 (still refers to the same instance)
person1?.printMessage()    // Call the printMessage method on person1

//if we want ARC removes both the object. we required to make both object nil.
person1 = nil    // Set person1 to nil, releasing its reference to the Person instance
person2 = nil    // Set person2 to nil, releasing its reference to the Person instance

//After this ARC will remove the both the object from the memory as there is no other use of the object and dinit() call.
//We required to nil both the objects if any one of the object is not nil then ARC will not remove the object from the memory.

