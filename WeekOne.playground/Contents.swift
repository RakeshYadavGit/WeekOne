// 1. swift oops basic

// Code of single level inheritance

// created parent class as Vehicle
class Vehicle{
  var brand: String
  var year: Int

    /*this method is called automatically during the object creation of the Vehicle class and assign value to
     value to the variables brand and year*/
  init(brand:String, year:Int){
    self.brand = brand
    self.year = year
  }
// created a function which just print the message
  func drive(){
    print("Vehicle is driving")
  }
}

//created subclass Car by deriving properties of a base class Vehicle
class Car: Vehicle{
  var noOfDoors: Int

  // this method is called automatically during the object creation of the Car class Vehicle
  init(brand:String, year:Int, noOfDoors: Int){
    self.noOfDoors = noOfDoors
    super.init(brand: brand, year: year)
  }

//Here override the logic of the function drive() of the parent class
  override func drive(){
    print("Car is driving")
  }
}

// Create an instance of the Vehicle class
let vehicle = Vehicle(brand:"Swift", year:2023)

// Create an instance of the Car class
let car = Car(brand:"BMW", year:2023, noOfDoors:4)

// Print the brand of the vehicle
print("The vehicle name is \(vehicle.brand)")

// Print the launching year of the vehicle
print("The launching year of vehicle \(vehicle.year) ")

// Print the brand of the car
print("The vehicle name is \(car.brand)")

// Print the launching year of the car
print("The launching year of vehicle \(car.year) ")

// Print the number of doors of the car
print("The number of doors are \(car.noOfDoors)")

// Call the drive() method of the vehicle
vehicle.drive()

// Call the drive() method of the car
car.drive()


/*output
 The vehicle name is Swift
 The launching year of vehicle 2023
 The vehicle name is BMW
 The launching year of vehicle 2023
 The number of doors are 4
 Vehicle is driving
 Car is driving*/


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
        super.init(name: name, empID: empID, salary: salary)
    }
}

let confirmation = Confirmation(name: "Rakesh Yadav", empID: "12345", salary: "5000")
print("Employee name is \(confirmation.name)")

//output: Employee name is Rakesh Yadav

//protocol inheritance
//Use of protocol to achive multiple inheritance
//mutiple inheritance means one child class have two or more than two parent class

//created Playable protocol which have only one function play()
protocol Playable{
  func play()
}

//created Recordable protocol which have only one function record()
protocol Recordable{
  func record()
}

//created AudioPlayer protocol which have only one function pause()
// It inherits Playable and Recordable protocol
protocol AudioPlayer: Playable, Recordable{
  func pause()
}

//created the MusicPlayer class which inherit AudioPlayer Protocol and implements all protocols methods
class MusicPlayer: AudioPlayer{
  func play(){
    print("Music is playing...")
  }

  func record(){
    print("Recording music...")
  }

  func pause(){
    print("Music is pause")
  }
}

//created VideoPlayer class by inheriting Playable and Recordable protocol
class VideoPlayer: Playable, Recordable{
    
//This is the method of the Playable
  func play(){
    print("Video is playing...")
  }
    
//This is the method of Recordable
  func record(){
    print("Video is recording...")
  }
}

let musicPlayer = MusicPlayer()
let videoPlayer = VideoPlayer()

musicPlayer.play()
musicPlayer.record()
musicPlayer.pause()

videoPlayer.play()
videoPlayer.record()

/*output
 Music is playing...
 Recording music...
 Music is pause
 Video is playing...
 Video is recording...
 */


// Example of example of strong reference

//created a class Person which hold the Job property
class Person{
  var name: String
  var job:Job? // Optional property to represent a person's job
  init(name:String){
    self.name = name
    print("init method of the Person class is called")
  }

  func printMessage(){
    print("The name is: \(name)")
  }

  deinit{
      print("deinit method is called for Person class")
    }
}
//created a class Job which hold the Person property
class Job{
  var jobName: String
  var person:Person? // Optional property to represent a person associated with the job

  init(jobName: String){
    self.jobName = jobName
    print("init method of the Job class is called")
  }

  func printMessage(){
    print("The job name is: \(jobName)")
  }

  deinit{
      print("deinit method is called for Job class")
    }
}

//This condition is used to understand the strong reference
if(1==1){
    
    // Creating an instance of Person
  let person = Person(name: "Rakesh")
  person.printMessage()
  
    // Creating an instance of Job
  let job = Job(jobName:"Application Eng")
  job.printMessage()

  // creating the relationship between the person and the job hence strong reference cycle
    //So dinit() method of the both class is not called by the ARC
  person.job = job
  job.person = person
  
}

/*output
 init method of the Person class is called
 The name is: Rakesh
 init method of the Job class is called
 The job name is: Application Eng
 */


// Example of weak refrence

class Person1{
  var name: String
  weak var job:Job1? // Using weak reference to avoid strong reference cycle
  init(name:String){
    self.name = name
    print("init method of the Person class is called")
  }

  func printMessage(){
    print("The name is: \(name)")
  }

    //This method is automaticlly called during object distraction
  deinit{
      print("deinit method is called for Person class")
    }
}

class Job1{
  var jobName: String
  var person:Person1?

  init(jobName: String){
    self.jobName = jobName
    print("init method of the Job class is called")
  }

  func printMessage(){
    print("The job name is: \(jobName)")
  }

  deinit{
      print("deinit method is called for Job class")
    }
}


if(1==1){
  
  let person = Person1(name: "Rakesh")
  person.printMessage()
  
  let job = Job1(jobName:"Application Eng")
  job.printMessage()

  person.job = job
  job.person = person
  
}

/*outut
 init method of the Person class is called
 The name is: Rakesh
 init method of the Job class is called
 The job name is: Application Eng
 deinit method is called for Job class
 deinit method is called for Person class
 */

//use of unowned

class Customer {
    let name: String
    var creditCard: CreditCard? // Optional variable to hold a reference to a CreditCard object
    
    init(name: String) {
        self.name = name
        print("Customer \(name) initialized")
    }
    
    deinit {
        print("Customer \(name) deallocated")
    }
}

class CreditCard {
    let number: String
    unowned let customer: Customer
    
    init(number: String, customer: Customer) {
        self.number = number
        self.customer = customer
        print("CreditCard initialized with number \(number)")
    }
    
    deinit {
        print("CreditCard \(number) deallocated")
    }
}

// Creating a customer instance
var customer: Customer? = Customer(name: "John Doe")

// Creating a credit card instance and establishing the unowned reference to the customer
var creditCard: CreditCard? = CreditCard(number: "1234567890", customer: customer!)

// Setting the creditCard property of the customer
customer?.creditCard = creditCard

// Deallocating the customer instance
customer = nil

// Deallocating the credit card instance
creditCard = nil

