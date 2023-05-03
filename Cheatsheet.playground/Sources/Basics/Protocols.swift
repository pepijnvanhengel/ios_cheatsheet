protocol Vehicle {
    var brand: String { get set }
    var model: String { get set }
    func startEngine()
}

class Car: Vehicle {
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

class Motorcycle: Vehicle {
    var brand: String
    var model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func startEngine() {
        print("Motorcycle started")
    }
}

class Protocols {
    init() {
        let myCar = Car(brand: "Toyota", model: "Corolla")
        let myMotorcycle = Motorcycle(brand: "Honda", model: "CBR")
        myCar.startEngine() // prints "Engine started"
        myMotorcycle.startEngine() // prints "Motorcycle started"
    }
}
