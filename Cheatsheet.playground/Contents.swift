import UIKit

// MARK: - Variables & Constants
var x = 10 // variable
x = 20 // changing the value of x

let y = 30 // constant
// y = 40 // will result in an error because y is a constant

// MARK: - Data Types
var a: Int = 10 // integer
var b: Float = 3.14 // floating-point number
var c: Double = 1.61803398875 // double-precision floating-point number
var d: Bool = true // boolean
var e: String = "Hello, World!" // string

// MARK: - Control flow
var grade = 85

if grade >= 90 {
    print("A")
} else if grade >= 80 {
    print("B")
} else if grade >= 70 {
    print("C")
} else {
    print("F")
}

for i in 1...5 {
    print(i)
}

while grade < 100 {
    grade += 5
}

// MARK: - Functions
func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}

let result = addNumbers(a: 5, b: 10)
print(result) // prints 15

// MARK: - Optionals
var name: String? // declaring an optional string variable
name = "John" // assigning a value to the optional variable

if let unwrappedName = name {
    print("Hello, \(unwrappedName)")
} else {
    print("No name provided")
}

// MARK: - Arrays & Dictionaries
var numbers = [1, 2, 3, 4, 5] // array

var person: [String : Any] = ["name": "John", "age": 25] // dictionary

print(numbers[2]) // prints 3
print(person["name"]) // prints "John"

// MARK: - Classes & structs
struct Person {
    var name: String
    var age: Int
}

var john = Person(name: "John", age: 25)
print(john.name) // prints "John"

class Car {
    var brand: String
    var model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func startEngine() {
        print("Engine started")
    }
}

var myCar = Car(brand: "Toyota", model: "Corolla")
myCar.startEngine() // prints "Engine started"

// MARK: - Closures
let list = [1, 2, 3, 4, 5]

let mappedNumbers = list.map({ number in
    return number * 2
})

print(mappedNumbers) // prints [2, 4, 6, 8, 10]
