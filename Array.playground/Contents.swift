// Creating an array of integers
var numbers:[Int] = [1, 2, 6, 3, 4, 5]

//cheching type of the array
print(type(of: numbers))

print("numbers: \(numbers)")

//sort the existing array
numbers.sort()

print("numbers array after sorting \(numbers)")

// Accessing elements in an array
let firstElement = numbers[0] // Accessing the first element
let lastElement = numbers[numbers.count - 1] // Accessing the last element
print("First Element: \(firstElement)")
print("Last Element: \(lastElement)")

print("First element using first is \(numbers.first!)")
print("Last element using last is \(numbers.last!)")

// using first where we can get the first element based on the condtion
//But output of the this optional value. So we need to handle the case
//It start iterating element from the first index to last index of the array.
if let firstEvenNumber = numbers.first(where: {$0 % 2 == 0}){
    print("The first even numbers is: \(firstEvenNumber)")
}
else{
    print("There is no even number")
}

//same logic is goes for last where but it iterating from last to first index.
if let lastEvenNumber = numbers.last(where: {$0 % 2 == 0}){
    print("The last even number is \(lastEvenNumber)")
}
else{
    print("There is no odd numbers")
}

// Modifying elements in an array
numbers[2] = 10 // Modifying the element at index 2

// Appending elements to an array
numbers.append(6) // Appending a new element to the end of the array

print("numbers array after append action \(numbers)")
// Inserting an element at a specific index
numbers.insert(7, at: 3) // Inserting 7 at index 3
print("numbers after inserting 7 at 3 \(numbers)")

// Removing an element at a specific index
let removedElement = numbers.remove(at: 1) // Removing the element at index 1

// Removing the last element
let lastRemovedElement = numbers.removeLast() // Removing the last element

print("Modified Array: \(numbers)")
print("Removed Element: \(removedElement)")
print("Last Removed Element: \(lastRemovedElement)")

// Iterating over the elements of an array
for number in numbers {
    print(number)
}

//using for each
numbers.forEach{print("Elements of array using for each: \($0)")}

// Applying a closure to each element using the map function
let doubledNumbers = numbers.map { $0 * 2 } // Doubling each element of the array

print("Doubled Numbers: \(doubledNumbers)")

// Filtering the array based on a condition using the filter function
let evenNumbers = numbers.filter { $0 % 2 == 0 } // Filtering out the even numbers

print("Even Numbers: \(evenNumbers)")

// Checking if all elements satisfy a condition using the allSatisfy function
let allGreaterThanZero = numbers.allSatisfy { $0 > 0 } // Checking if all numbers are greater than zero

print("All Numbers Greater Than Zero: \(allGreaterThanZero)")

// Sorting the array in ascending order using the sorted function
let sortedNumbers = numbers.sorted() // Sorting the array

print("Sorted Numbers: \(sortedNumbers)")

//count function

print("Total Number of elements in array \(numbers.count)")

//check if array is empty or not

print("Array is empty: \(numbers.isEmpty)")

//copy of array is created when we assign array variable into anyother variable
//so when we do any modification in any array variable. The changes is not going to reflect in both the variable beacuse both variable using the different 
var numberCopy = numbers
numberCopy.append(20)
print("Numbers array: \(numbers)")
print("NumberCopy array: \(numberCopy)")

//Check the capacity of the aaray
print("Array capacity \(numbers.capacity)")

numbers.append(contentsOf: [7,8,9,10,11,12,13])
print("Array capasity \(numbers)")

print("Start index of the array: \(numberCopy.startIndex)")
print("End index of the array: \(numberCopy.endIndex)")
