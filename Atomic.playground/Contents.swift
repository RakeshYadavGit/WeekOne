import Foundation

// This class basically created to understand the logic of the atomic property in swift.
//atomic property's are those  property's that can be modify by the one thread at a time
class Counter {
    
    //It is a critical section of the code which can be accessed by the one thread at time.
    private var count: Int = 0
    
    //  NSLock is used to protect critical sections of code from being executed simultaneously by multiple threads, ensuring that only one thread can access the protected code at a time.
    //Other threads that attempt to acquire the lock will be blocked and wait until the lock is released by the currently executing thread.
    //the NSLock is used to synchronize access to the count variable of the Counter class.
    private let lock = NSLock()
    
    //The increment() method acquire the lock before modifying the count and release it afterward, ensuring that only one thread can modify the count at a time.
    //This function is used to increment the count value by 1
    func increment() {
        lock.lock()   // Acquire the lock to ensure thread safety
        count += 1    // Increment the count by 1
        lock.unlock() // Release the lock
    }
    
    // decrement() method also acquire the lock before modifying the count and release it afterward, ensuring that only one thread can modify the count at a time.
    //This function is used to decrement the count value by 1
    func decrement() {
        lock.lock()   // Acquire the lock to ensure thread safety
        count -= 1    // Decrement the count by 1
        lock.unlock() // Release the lock
    }
    
    //The getCount() method also acquires the lock while reading the count to ensure a consistent and accurate result.
    //This function is used to get the current value of the count
    func getCount() -> Int {
        lock.lock()        // Acquire the lock to ensure thread safety
        let value = count  // Retrieve the current count value
        lock.unlock()      // Release the lock
        return value       // Return the count value
    }
}

let counter = Counter()  // Create an instance of the Counter class

//the main use of the DispatchQueue is to execute the task concurrently.
//The concurrentPerform function takes two parameters first is a number of iterations and secound closure containing the code to be executed
//This distributes the workload in multiple thred for the parallel excution of the task
//Here the DispatchQueue is used to increment the counter 100 times concurrently
DispatchQueue.concurrentPerform(iterations: 100) { _ in
    counter.increment()  // Perform the increment operation 100 times concurrently
}

print("After Increment:", counter.getCount())  // Print the current count value

//Here the DispatchQueue is used to decrement the counter 50 times concurrently
DispatchQueue.concurrentPerform(iterations: 50) { _ in
    counter.decrement()  // Perform the decrement operation 50 times concurrently
}

print("After Decrement", counter.getCount())  // Print the current count value


// Output if dont use the Nslock. This output going to be change every time because at a time mutiple thread performing operation on the same memory location.
// Also if remove the NSLock it becomes the example of the non atomic property.
//After Increment: 99
//After Decrement 49

//to avoid this problem we need to use Nslock
//output after using nsLock.
//After Increment: 100
//After Decrement 50

//We got this output because at a time only one thread can accessed and modify the value of the count variable.


