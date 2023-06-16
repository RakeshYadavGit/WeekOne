let str = "Hello, World!"
print("Original String: \(str)")

// Accessing and Modifying a String
let count = str.count // Get the number of characters in the string
print("Count: \(count)")

let isEmpty = str.isEmpty // Check if the string is empty
print("Is Empty: \(isEmpty)")

let firstCharacter = str.first // Get the first character of the string
print("First Character: \(firstCharacter ?? "-")")

let lastCharacter = str.last // Get the last character of the string
print("Last Character: \(lastCharacter ?? "-")")

let uppercaseStr = str.uppercased() // Convert the string to uppercase
let lowercaseStr = str.lowercased() // Convert the string to lowercase
let reversedStr = String(str.reversed()) // Reverse the characters in the string


// Checking for Substrings
let hasPrefix = str.hasPrefix("Hello") // Check if the string starts with a specific prefix
let hasSuffix = str.hasSuffix("!") // Check if the string ends with a specific suffix


// Substring Extraction
let startIndex = str.startIndex // Get the starting index of the string
let endIndex = str.index(str.startIndex, offsetBy: 5) // Get the ending index of a substring
let substring = str[startIndex...endIndex] // Extract a substring using a range


// String Searching
let contains = str.contains("lo") // Check if the string contains a specific substring
let hasWhitespace = str.contains { $0.isWhitespace } // Check if the string contains whitespace characters

// String Conversion
let intStr = String(123) // Convert an integer to a string
let doubleStr = String(3.14) // Convert a double to a string
let characterStr = String("A") // Convert a character to a string

// Iterating over Characters
for char in str {
    print(char) // Iterate over each character in the string and print it
}

print("First Character: \(firstCharacter ?? "-")")
print("Last Character: \(lastCharacter ?? "-")")
print("Uppercased String: \(uppercaseStr)")
print("Lowercased String: \(lowercaseStr)")
print("Reversed String: \(reversedStr)")
print("Has Prefix 'Hello': \(hasPrefix)")
print("Has Suffix '!': \(hasSuffix)")
print("Substring: \(substring)")
print("Contains 'lo': \(contains)")
print("Has Whitespace: \(hasWhitespace)")
print("Integer to String: \(intStr)")
print("Double to String: \(doubleStr)")
print("Character to String: \(characterStr)")


