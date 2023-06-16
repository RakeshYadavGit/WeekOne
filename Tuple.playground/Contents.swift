
// Creating a tuple with three elements: name, age, and active status
let person = ("Rakesh", 30, true)

// Accessing tuple elements using index
let name = person.0 // Accessing the first element of the tuple (name)
let age = person.1 // Accessing the second element of the tuple (age)
let isActive = person.2 // Accessing the third element of the tuple (active status)

print("Name: \(name)")
print("Age: \(age)")
print("Is Active: \(isActive)")

// Decomposing a tuple by assigning elements to individual variables
let (personName, personAge, _) = person // Decomposing the tuple into individual variables
print("Decomposed Name: \(personName)")
print("Decomposed Age: \(personAge)")

// Naming tuple elements during declaration
let employee = (name: "Nitin", id: 1234, department: "Developer") // Creating a tuple with named elements
print("Employee Name: \(employee.name)") // Accessing the element by name
print("Employee ID: \(employee.id)")
print("Employee Department: \(employee.department)")

// Comparing tuples for equality
let point1 = (x: 2, y: 3)
let point2 = (x: 2, y: 3)
let point3 = (x: 5, y: 1)

if point1 == point2 {
    print("point1 is equal to point2") // Checking if point1 is equal to point2
} else {
    print("point1 is not equal to point2")
}

if point1 == point3 {
    print("point1 is equal to point3")
} else {
    print("point1 is not equal to point3") // Checking if point1 is equal to point3
}
