//Example of unonwed
//unowned is same like a weak keyword but it can also work with the non optional value.
//unowned keyword is required to use for creating unownd refrence cycle.
//unowned can work with the immutable value for example variable created by the let keyword. This is the one of the major diffrence between the weak and unowned.

class Customer {
    let name: String
    //Here creditCard is optional because we can not sure every user have the creditCard. There are some user, Those doest not have the creditCard. So it may be nil. so we required to make creditCard as optinal to handle the error.
    var creditCard: CreditCard? // Optional variable to hold a reference to a CreditCard object
    
    init(name: String) {
        self.name = name
        print("Customer \(name) initialized")
    }
    
    deinit {
        print("Customer \(name) deallocated")
    }
}


//unowned is used to create an unowned reference.
//An unowned reference is a way to establish a relationship between two objects where one object holds a reference to another object,
//but without increasing the reference count.

class CreditCard {
    let number: String
    //Here we required to use non optional value. Because as we know that credit card must be assign to one user.
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
var customer: Customer? = Customer(name: "Yash")

// Creating a credit card instance and establishing the unowned reference to the customer
var creditCard: CreditCard? = CreditCard(number: "1234567890", customer: customer!)

// Setting the creditCard property of the customer
customer?.creditCard = creditCard

// Deallocating the customer instance
customer = nil

// Deallocating the credit card instance
creditCard = nil


/*output
 Customer Yash initialized
 CreditCard initialized with number 1234567890
 Customer Yash deallocated
 CreditCard 1234567890 deallocated
 */
