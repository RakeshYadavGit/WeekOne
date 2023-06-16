// 1. swift oops basic

// Code of single level inheritance

// created parent class as Vehicle
class Vehicle{
  var brand: String
  var year: Int

    /*this method is called automatically during the object creation of the Vehicle class and assign value to the variables brand and year */
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
