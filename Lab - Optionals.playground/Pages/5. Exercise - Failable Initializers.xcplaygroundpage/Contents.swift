/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    var ram : Int
    var yearManufacturer: Int
    
    init?(ram : Int, yearManufacturer: Int) {
        if ram > 0 && yearManufacturer > 1970 && yearManufacturer < 2020 {
            self.ram = ram
            self.yearManufacturer = yearManufacturer
        } else {
            return nil
        }
    }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
let failingComputer = Computer(ram: 0, yearManufacturer: 1968)
if let computer = failingComputer {
    print(computer.ram)
    print(computer.yearManufacturer)
}

let succeedingComputer = Computer(ram: 16, yearManufacturer: 2010)
if let computer = succeedingComputer {
    print(computer.ram)
    print(computer.yearManufacturer)
}

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
