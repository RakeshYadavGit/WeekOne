
// For Loop

// Basic for loop
for i in 1...5 {
    print(i) // Print numbers from 1 to 5 (inclusive)
}

for i in 1..<5 {
    print(i) // Print numbers from 1 to 4 (excluding 5)
}

// Looping over an array with index
let fruits = ["Apple", "Banana", "Orange"]
for (index, fruit) in fruits.enumerated() {
    print("Index: \(index), Fruit: \(fruit)") // Print index and corresponding fruit
}

// Looping over a dictionary
let scores = ["Rakesh": 80, "manish": 90, "Yash": 75]
for (name, score) in scores {
    print("\(name): \(score)") // Print name and corresponding score
}

// For Each Loop

// For each loop using array
let numbers = [1, 2, 3, 4, 5]
for number in numbers {
    print(number) // Print each number in the array
}

// For loop using dictionary values
let ages = ["rakesh": 22, "yash": 21, "manish": 20]
for age in ages.values {
    print("Age: ",age) // Print each age in the dictionary
}


// Using forEach to print each number in the array
numbers.forEach { print("Element of Array \($0)") }


// For Where Loop

// For loop with a condition using the where clause
for i in 1...10 where i % 2 == 0 {
    print(i) // Print even numbers from 1 to 10
}

// While Loop

// Basic while loop
var count = 0
while count < 5 {
    print(count) // Print the current count
    count += 1 // Increment the count
}

// Repeat-While Loop

// Basic repeat-while loop
var number = 1
repeat {
    print(number) // Print the current number
    number += 1 // Increment the number
} while number <= 5

// If-Else Statement

let x = 10

if x > 5 {
    print("x is greater than 5") // Print if x is greater than 5
} else {
    print("x is less than or equal to 5") // Print if x is less than or equal to 5
}

// la

// Switch Statement

let fruit = "Apple"

switch fruit {
case "Apple":
    print("It's an apple") // Print if fruit is "Apple"
case "Banana":
    print("It's a banana") // Print if fruit is "Banana"
default:
    print("Unknown fruit") // Print for any other fruit
}


