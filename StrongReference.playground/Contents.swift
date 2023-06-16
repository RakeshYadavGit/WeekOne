
// Example of example of strong reference
//Strong reference occurs when two or more objects hold the strong refrence to each other
//Hence in result ARC will not remove the object of the class from the memory which is bad for the memory management

//created a class Person which hold the Job property
class Person{
  var name: String //This is used to store the name of the Person
  var job:Job? // Optional property to represent a person's job
    
    // This method always going to excute during the object creation process.
    //This method is used to to assign name to the person
  init(name:String){
    self.name = name
    print("init method of the Person class is called")
  }

    //This metthos is used to print the name of the user.
  func printMessage(){
    print("The name is: \(name)")
  }

    //This method is called automatically during the object destruction
    //but in this code this is not going to call because of strong reference
  deinit{
      print("deinit method is called for Person class")
    }
}
//created a class Job which hold the Person property
class Job{
  var jobName: String //Used to store the job of the Person
  var person:Person? // Optional property to represent a person associated with the job

    // This method always going to excute during the object creation process.
    //This method is used to to assign job name to the person
  init(jobName: String){
    self.jobName = jobName
    print("init method of the Job class is called")
  }

  func printMessage(){
    print("The job name is: \(jobName)")
  }

    //This method is called automatically during the object destruction
    //but in this code this is not going to call because of strong reference 
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
