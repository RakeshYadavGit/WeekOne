// An array of numbers
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Example 1: map(_:)
//map can be used with array and dictionary
//map is used for data transformation
//we pass the instruction as a parameter to the map function
//map returns the separate array
// Using map to transform each element in the array
let squaredNumbers = numbers.map { $0 * $0 }
print("Square of a number are \(squaredNumbers)")

// Convert number of array in String using map
let numberAsString = numbers.map{(a) -> String in
    return String(a)
}

print("Number as String: \(numberAsString)")

//other way to convert
let numberToString = numbers.map{ String($0) }
print("number to string \(numberToString)")

let numberNil:[Int?] = [1,2,3,4,5,6,7,nil,9,10]

// function for multiplication of the array element with given value.
func multiplication(value : Int) -> [Int]{
    return numberNil.map { ($0 ?? 8) * value } // added default unwrapped to handle the nil case to avoid error
}
print("Table: \(multiplication(value: 2))")

// Example 2: filter(_:)
// Using filter to get only the even numbers from the array
// filter is used to filter out the element from array based on the condition.
let evenNumbers = numbers.filter { $0 % 2 == 0 }
print("Even numbers in array are \(evenNumbers)")

//using filter to get numbers of array which is less than 5
let filterNumber = numbers.filter{(a) -> Bool in
    return a < 5
}

print("Filter Number \(filterNumber)")

// Example 3: reduce(_:combine:)
// Using reduce to calculate the sum of all numbers in the array
let sum = numbers.reduce(0) { $0 + $1 }
print("Sum of array is \(sum)")


// Example 4: sorted(by:)
// Using sorted to sort the numbers.
let sortedNumbers = numbers.sorted()
print("Array after sorting \(sortedNumbers)")

// sort the array in descending order
let descendingNumber = numbers.sorted{ (a,b) -> Bool in
    return a > b
}
print("Descending order \(descendingNumber)")


//sort the even number first using sorted
//This logic stored the even value of the array left side and odd on right side of the array.
let evenFirst = numbers.sorted{ (a,b) -> Bool in
    return a%2 == 0
}

print("Even number first: \(evenFirst)")



// Example 6: compactMap(_:)
//It add the functionality of the both filter and map
//During the execution if nil value occured it simpliy filter out nil value
//for example

//at the index of 3 of numbersInString array there is there is Four return in english letter.
//if we directly use the map we get the error. to avoid this we need to use compactMap
let numbersInString = ["1", "2", "3", "Four", "5"]
let transformedToNumbers = numbersInString.compactMap { str in
    Int(str)
}
print("transformedToNumbers \(transformedToNumbers)")

// compactMap with map
let optionalIntArray: [Int?] = [1,nil,2,3,4,nil,6]
// first compactMap remove the optinal and nil from the array than map apply the multipliaction
let compactMapWithMap = optionalIntArray.compactMap{$0}.map{$0 * 2}
print(" Compact map with map: \(compactMapWithMap)")

// Example 7: flatMap(_:)
// Using flatMap to transform and flatten nested arrays
let nestedArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
let flattenedArray = nestedArray.flatMap { $0 }
print("Nested Array is: \(nestedArray)")
print("flattenedArray \(flattenedArray)")

//flatMap with map
//first flatMap combine collections into the single array
//after that map is used to perform addition on the array

let flatMapWithMap = nestedArray.flatMap{$0}.map{$0 + 10}
print("flatMap With Map \(flatMapWithMap)")

// Example 8: first(where:)
// Using first(where:) to find the first even number in the array
let firstEvenNumber = numbers.first { $0 % 2 == 0 }


// Example 9: zip(_:)
// Using zip to combine two arrays into a single array of tuples
let letters = ["A", "B", "C"]

let combined = zip(numbers, letters)

for (number, letter) in combined {
    print("\(number): \(letter)")
}
// Iterating over the combined sequence of tuples and printing each element.
// The output will be:
// 1: A
// 2: B
// 3: C
