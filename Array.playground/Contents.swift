// Creating an array of integers
var numbers = [1, 2, 3, 4, 5]
print("numbers: \(numbers)")
// Accessing elements in an array
let firstElement = numbers[0] // Accessing the first element
let lastElement = numbers[numbers.count - 1] // Accessing the last element

print("First Element: \(firstElement)")
print("Last Element: \(lastElement)")

// Modifying elements in an array
numbers[2] = 10 // Modifying the element at index 2

// Appending elements to an array
numbers.append(6) // Appending a new element to the end of the array

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

