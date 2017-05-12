//: Playground - noun: a place where people can play

import UIKit
import XCPlayground


var singleLetter:Character = "j"

singleLetter = "S"
//  integeruser = 3
//  not able to modified

var letters:[Character] = ["1","2","3","3","4","5"]
var wesite:String = String(letters)

let twoThousand: UInt16 = 30_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)



let tooBig: Int16 = Int16.max

let PrintTheCat = "🐱"  // this is also possible
let integervalues = UInt.max

// Automatically it was Assign the Variable Type
var integeruser = 1         //  int
var BoolCondition = false   //  Bool


if integeruser == 1
{
    integeruser = 2
    if BoolCondition {
        print("Success")
    }else if integeruser == 2{
        print("integeruser is a var variable so we can edit")
    }else {
        print("Fail")
    }
}

//      Tuples - Tuples group multiple values into a single compound value. The values within a tuple can be of any type and do not have to be of the same type as each other.

let http404Error = (404, "Not Found", 4.67, ints : 45, [1,2,3])
let DictTubules = (strings : "value of the tubules", ints : 45 )

let (statusCode, statusMessage,_,didDict, arrpos) = http404Error
print("The status code is \(statusCode) - Tuples")
print("Tuples \(http404Error.ints) - \(http404Error.0) - \(didDict)")

print("Tuples Array \(arrpos)")

let (_,justTheStatusCode,_,_,_) = http404Error
print("The status code is \(justTheStatusCode)")




let possibleNumber = "123"
let possibleNumber2 = 123
let convertedNumber = Int(possibleNumber)

let thisVariableIsNil : String?

//      optional (?) - may be it contain nil value and unwrapped (!) - never nil value

var possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark
print(possibleString)
print(possibleString!)


let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark
print(assumedString)



// **************************************************************** //

//  if conditions  -  Optional Binding

if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("\"\(possibleNumber)\" could not be converted to an integer")
}


if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

//      Both are Same..

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

// **************************************************************** //


// get host name and other details from URL
var urlString = "https://www.amason.co.uk/something"
var url = NSURL(string: urlString)
var domain = url?.host


// Covertion Type Case
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
let integerPi = Int(pi)
print(integerPi)


// date Formate Convertion
let dateFormatter = DateFormatter()

dateFormatter.dateFormat = "yyyy-MM-dd"
let date = dateFormatter.date(from: "2017-09-01")

dateFormatter.dateFormat = "dd-MM-yyyy"
let goodDate = dateFormatter.string(from: date!)


let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
label.center = CGPoint(x: 0, y: 285)
label.textAlignment = .center
label.textColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
label.text = "I'am a test label"

// **************************************************************** //

// try - catch function

func canThrowAnError() -> Bool{
    let intval = false
    print("van")
    return intval
}

do {
    print("Continue")
    try canThrowAnError()
    
} catch {
    print("Block")
}

// **************************************************************** //

// Basic Operators

let (basicValueOfFunc, Advancevalue,stringvar) = (1,100,"starting")
print("the \(stringvar) value is \(basicValueOfFunc) and ending value is \(Advancevalue)")

// conditional operator

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// Nil-Coalescing Operator

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

 
// Range Operators

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
for i in 0...4{print(i)}

// Logical Operators

let allowedEntry = false
let enteredDoorCode = true
let passedRetinaScan = false

var logicalOpr = !allowedEntry ? "true" : "False"
logicalOpr = enteredDoorCode && passedRetinaScan ? "true" : "false"
logicalOpr = enteredDoorCode || passedRetinaScan ? "true" : "false"


// **************************************************************** //

// Strings and Characters

var anotherEmptyString = String()  // initializer syntax
var checkEmptyString = anotherEmptyString.isEmpty ? "Yes" : "No"

for character in "Stupid Dog!🐶".characters {
//    print(character)  // print as Charecters
}

// Concatenating Strings 

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)


let dogString = "Dog‼🐶"
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}


// **************************************************************** //

// Collection Types

/* 
 They are Three Types of Collection type - Array, Set ,Dictioinary
 Arrays are ordered collections of values.
 Sets are unordered collections of unique values.
 Dictionaries are unordered collections of key-value associations.
 */


// **************************************************************** //

class person{
    var name : String?
    var ageDate  : Int?
    var ageMonth : Int?
    var ageyear : Int?
    
    init(name : String, ageDate : Int, ageMonth : Int, ageYear: Int) {
        self.name = name
        self.ageDate = ageDate
        self.ageMonth = ageMonth
        self.ageyear = ageYear
    }
}


class personModelview{
    private var per : person
    
    var personName : String{
        let strings : String = "name is " + per.name!
    return strings
    }
    
    var ageCalculation : Int{
        let DOB : String = "\(String(describing: per.ageDate))-\(String(describing: per.ageMonth))-\(String(describing: per.ageyear))"
        let age = self.ageCalculation(DOB: DOB)
        return age
    }
    
    func ageCalculation(DOB : String) -> Int {
        
        let now = Date()
        let birthday = self.strToDate(DOB: DOB)
        let calendar = Calendar.current
        
        let ageComponents = calendar.dateComponents([.year], from: birthday, to: now)
        let age = ageComponents.year!
        
        return age
    }
    
    func strToDate(DOB : String) -> Date{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-mm-yyyy" //Your date format
        let fromDate = dateFormatter.date(from: DOB)
        return fromDate!
    }

    init(per: person) {
        self.per = per
    }
}
    


let Details : [personModelview] = {
    
    let bala = person(name:"bala", ageDate: 23, ageMonth : 05, ageYear: 1995)
    return [personModelview(per:bala)]
}()
