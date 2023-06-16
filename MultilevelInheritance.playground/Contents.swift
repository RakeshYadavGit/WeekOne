//code of Multilevel Inheritance


//created parent class as Employee
class Employee {
    var name: String
    var empID: String

    init(name: String, empID: String) {
        self.name = name
        self.empID = empID
    }
}

//created Salary class which derived the property of the Parent Class Employee
class Salary: Employee {
    var salary: String

    init(name: String, empID: String, salary: String) {
        self.salary = salary
        super.init(name: name, empID: empID) //It is used to access it's parent class init()
    }
}

//created Confirmation class which derived the property of the Parent Class Salary
class Confirmation: Salary {
    override init(name: String, empID: String, salary: String) {
        super.init(name: name, empID: empID, salary: salary) //It is used to access Salary class init() method
    }
}
// create an instance of the confirmation
let confirmation = Confirmation(name: "Rakesh Yadav", empID: "12345", salary: "5000")

print("Employee name is \(confirmation.name)")

//output: Employee name is Rakesh Yadav
