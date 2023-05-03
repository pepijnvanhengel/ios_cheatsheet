class AdvancedOperators {
    init() {
        let array1 = [1, 2, 3]
        let array2 = [4, 5, 6]

        // Concatenate two arrays using the + operator
        let concatenated = array1 + array2
        print(concatenated)

        // Use the ?? operator to provide a default value
        let optionalValue: Int? = nil
        let defaultValue = optionalValue ?? 0
        print(defaultValue)

        let person = Person(name: "John", address: nil)
        let streetName = person.address?.street ?? "Unknown"
        print(streetName)

        // Use the is and as operators for type checking and casting
        class Animal {}
        class Dog: Animal {}

        let animal: Animal = Dog()
        print(animal is Animal)
        print(animal is Dog)

        if let dog = animal as? Dog {
            print(dog)
        }
    }
    
    // Use the . operator for optional chaining
    struct Person {
        var name: String
        var address: Address?
    }

    struct Address {
        var street: String
        var city: String
    }
}
