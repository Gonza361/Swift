//Variables var, constant let, print
var myFirstVariable = 1

myFirstVariable = 2

print(myFirstVariable)

let myFirstConstant = "hola"


//String
let myString: String = "string" //Defining the data type
let myString = "String"
let myString2 = "String2"
let myString3 = myString + " " + myString2

//Int
let myInt = 1
let myInt2: Int = 2 //Defining the data type
print(myInt + myInt2)

//Double
let myDouble = 1.5
let myDouble2: Double = 1.5
print(myDouble + myDouble2)

//Float used fo shorter lenght than double
let myFloat: Float = 1.5

//You can only operate variables of the same data type, otherwise you will get an error

//Bool
let myBool: Bool = true
let myBool2 = false
print(myBool && myBool2)
print(myBool == myBool2)

//If statements
let myNumber = 12
if (myNumber > 5 && myNumber < 10) || != 0 { 
    print(*\(myNumber) es menor que 10*)
} else if myNumber == 1{
    print(*\(myNumber) es igual a 1*)
} else {
    print(*\(myNumber) es mayor que 10*)      
} 

//Switch sentence
let country = "España"
switch country {
    case "España", "Peru":
        print("Idioma español")
    case "Argentina":
        print("Idioma español")
    case "Mexico":
        print("Idioma español")
    default: 
        print("No conocemos idioma")
}

let age = 10
switch age {
    case 0, 1, 2:
        print("Bebe")
    case 3... 10:
        print("No es bebe")
    case 10..< 100:
        print("No es bebe")
    default:
        print("otra edad")
}

//Arrays
let name = "Gon"
let surname = "Hola"
let pet = "Cat"
var myArray = Array<String>()
var myModernArray = [String]()
myModernArray.append(name)
myModernArray.append(contentsOf: ["uno", "dos"])
myModernArray += ["uno", "dos"]
myModernArray[0]
myModernArray[3] = "Cambio"
myModernArray.remove(at: 3) 
for value in myModernArray {
    print(value)
}
myModernArray.count //lenght of the array
myModernArray.first
myModernArray.last

//Diccionario
let myOldDictionary = Dictionary<String, Int>()
let myNewDictionary = [String:Int]()
myNewDictionary = ["Uno":1, "Dos":2, "Tres":3]
myNewDictionary = ["Cuatro"] = 4
myNewDictionary["Cuatro"]
myNewDictionary.updateValue(12, forKey: "Cuatro")
myNewDictionary["Cuatro"] = nil //Removing a value from the dictionary
myNewDictionary.removeValue(forKey: "Cuatro")


//For, While, Repeat While
let myNewDictionary = [String:Int]()
myNewDictionary = ["Uno":1, "Dos":2, "Tres":3]

var myModernArray = [String]()
myModernArray.append(contentsOf: ["uno", "dos"])

for stringElement in myModernArray {
    print(stringElement)
}
for dictElement in myNewDictionary {
    print(dictElement)
}
for index in 1..<5 {
    print(index)
}
myModernArray.forEach { (stringElement) in
    print(stringElement)
}
myNewDictionary.forEach { (key, value) in
    print("\(key):\(value)")
}

//While
var myNumberArray: [Int] = []
for index in 1...20 {
    myNumberArray.append(index)
}

var index = 0
while index < 10 {
    print(myNumberArray[index])
    index += 1
}

//Repeat While
repeat {
    print(myNumberArray[index])
} while index < 10

//Optionals
let myString = "12345"
let myInt = Int(myString)
print(myInt) //Int? data type, Optional, it will return an Int if the transformation succeeds or nil otherwise
if myInt != nil {
    print(myInt! + 10) //Working with optional variables
}
//Defining optionals
var myNewString: String?
myNewString = "Uno"
print(myNewString!) //Forzing desempaquetado
//Optional chaining
if let myNonNilString = myNewString{
    print(myNonNilString)
} else {
    print(myNewString)
}


//Functions
func sayHello() {
    print("Hola")
}
sayHello()

func sayMyName(name: String, age: Int) {
    print("My nombre es\(name)")
}
sayMyName(name: "Gonzalo", age: 5)

func helloString() -> String {
    return "Hola"
}
print (helloString())

func sumTwoNumbers(firstNumber: Int, secondNumber: Int) -> Int {
    let sum = firstNumber + secondNumber
    return sum
}
let myNewNumber = sumTwoNumbers(firstNumber: 5, secondNumber: 2)
print(myNewNumber)

func callFunctions() {
    sayMyName(name: "Gonzalo", age: 5)
    helloString()
    sumTwoNumbers(firstNumber: 5, secondNumber: 2)
}


//Classes
class Programmer {
    let name: String
    let age: Int
    let lenguajes: [Language]
    var friends: [Programmer]?

    enum Language() {
        case swift
        case kotlin
        case java
        case javascript
    }

    init(name: String, age: Int, lenguajes: [Language]) {
        self.name = name
        self.age = age
        self.lenguajes = lenguajes
    }

    func code() {
        print("Estoy programando\(lenguajes)")
    }
}

let programador = Programmer(name: "Gon", age: 5, lenguajes: [.swift, .kotlin])
let programador2 = Programmer(name: "Pedro", age: 5, lenguajes: [.kotlin])
programador.friends = [programador2]
programador.code()
