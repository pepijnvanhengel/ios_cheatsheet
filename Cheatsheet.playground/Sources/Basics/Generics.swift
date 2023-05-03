final class Generics {
    init() {
        var x = 10
        var y = 20
        swapValues(&x, &y)
        print(x, y) // prints 20 10

        var str1 = "hello"
        var str2 = "world"
        swapValues(&str1, &str2)
        print(str1, str2) // prints "world" "hello"
    }
    
    func swapValues<T>(_ a: inout T, _ b: inout T) {
        let temp = a
        a = b
        b = temp
    }
}
