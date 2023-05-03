class Optionals {
    init() {
        let result1 = divide(10, by: 2)
        let result2 = divide(10, by: 0)

        if let unwrappedResult1 = result1 {
            print(unwrappedResult1) // prints 5
        } else {
            print("Error: division by zero")
        }

        if let unwrappedResult2 = result2 {
            print(unwrappedResult2)
        } else {
            print("Error: division by zero")
        }
    }
    
    func divide(_ a: Int, by b: Int) -> Int? {
        guard b != 0 else {
            return nil
        }
        
        return a / b
    }
}
