
// Example of weak reference

//weak reference is a type of reference that does not keep a strong hold on the referenced object.
//It is a way to establish a relationship between objects without increasing the reference count of the object being referred to
//Rules for Using the weak:
// 1. weak reference is only used with the mutable data for example variable created with var keyword.
// 2. variable also need to be optional
// 3. weak keyword is required to use.

// Person1 class is created which hold the property of the Job1
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
    // because strong refrence is not going created due to use of weak keyword
    // Basically It is used to optimized the memory memory management
  deinit{
      print("deinit method is called for Person class")
    }
}

// Job1 class is created which hold the property of the Person1
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

    //This method is automaticlly called during object distraction
  deinit{
      print("deinit method is called for Job class")
    }
}


if(1==1){
  
  let person = Person1(name: "Rakesh")
  person.printMessage()
  
  let job = Job1(jobName:"Application Eng")
  job.printMessage()

    // creating the relationship between the person and the job but strong refrence cycle is not going to create.
    //So dinit() method of the both class is called by the ARC
    //it can automatically become nil when the referenced object is deallocated.
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
