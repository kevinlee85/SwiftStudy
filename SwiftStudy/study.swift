//
//  study.swift
//  SwiftStudy
//
//  Created by kevin on 10/20/14.
//  Copyright (c) 2014 kevin. All rights reserved.
//

import Foundation


class study {
    var myVariable = 3.4
    let lable = "the width is: "
    let width = 7
    
    func goTest() {
        println("the begining of how to use swift to code! So happy")
        NSLog("SSS")
        println("test1: " + test1())
        println("test2: " + test2())
        println("test3: " + test3())
        println("testOverride:" + testOverride())
        testEnum()
        testProtocol()
        testArray()
        testDictionary()
        testBasicControl()
        testFunction()
        testBlock()
        testWillSet()
        testTypeCheck()
        testOptional()
    }
    
    func test1() ->String{
        let widthLable  = lable + String(width)
        return widthLable
    }
    
    var shoppingList = ["catfish" , "water", "tulips", "blue paint"]
    //this test function is used to study how to check one element in list
    func test2()->String{
        return shoppingList[1]
    }
    
    //Below is to study how to use key-value list
    var occupations = [
        "kevin": "manager",
        "lucy": "artict",
        "gary": "coder",
    ]
    
    func test3()->String{
        return occupations["kevin"]!
    }
    
    func testOverride() -> String{
        var fObject = NamedShape(name: "father")
        var fd = fObject.simpleDescription()
        println("the father is : \(fd)")
        
        var sObject = Square(sideLength: 3.4, name: "son")
        
        println("the value of parmeters is : \(sObject.paramter)")
        
        sObject.paramter = 5.0
        
        println("the value of sideLenght is :\(sObject.sideLength)")
        
        
        return "area is : \(sObject.area()) the son description is : \(sObject.simpleDescription())"
    }
    
    // below let us study how to use enum and stuct.
    enum ServerResponse {
        case Result(String, String)
        case Error(String)
    }

    let success = ServerResponse.Result("6:00 am", "8:09 pm")
    func testEnum() {
        enum Rank:Int{
            case Ace = 1
            case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
            case Jack, Queen, King
            func simpleDescription() -> String {
                switch self {
                case .Ace:
                    return "ace1"
                case .Jack:
                    return "jack"
                case .Queen:
                    return "queen"
                case .King:
                    return "king"
                default:
                    return String(self.rawValue)
                }
            }
        }
        
        enum Suit {
            case Spades, Hearts, Diamonds, Clubs
            func simpleDescription() -> String {
                switch self {
                case .Spades:
                    return "spades"
                case .Hearts:
                    return "hearts"
                case .Diamonds:
                    return "diamonds"
                case .Clubs:
                    return "clubs"
                }
            }
        }
        
        let ace = Rank.Ace
        let two = Rank.Two
        let aceRawValue = ace.rawValue
        let jack =  Rank.Jack
        
        println("the value of ace is : \(ace.simpleDescription()) . and the value of aceRawValue is: \(aceRawValue)")
        println("the value of two is: \(two.simpleDescription()) ")
        println("the value of Jack is: \(jack.simpleDescription()) . the rawValue of jack is: \(jack.rawValue)")
        
        
        struct Card {
            var rank: Rank
            var suit: Suit
            func simpleDescription() -> String {
                return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
            }
        }
        
        let threeOfSpades = Card(rank: .Three, suit: .Spades)
        let hah = Card(rank: .Five, suit: .Hearts)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        println("the test of enum and struct is: \(threeOfSpadesDescription)")
        println("the test of enum and struct is: \(hah.simpleDescription())")
        
        
        
        let failure = ServerResponse.Error("Out of cheese.")
        
        var serverResponse:String
        
        switch success {
        case let .Result(sunrise, sunset):
            serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
        case let .Error(error):
            serverResponse = "Failure...  \(error)"
        }
        
        println("the ServerResponse: \(serverResponse)")
        
    }
    
    func testProtocol(){
        var p = SimpleClass()
        println("The test result of protocol is : \(p.simpleDescription)")
        p.adjust()
        println("The test result of protocol is : \(p.simpleDescription)")

    }
    // 2014-12-13, i am studying how to use array in swift.
    func testArray() {
        println("** Show how to use Array**")
        var shoppingList : [String] = ["milk", "clothes"]
        println("The number of array is \(shoppingList.count)")
        shoppingList.append("water")
        println("The number of array is \(shoppingList.count)")
        if shoppingList.isEmpty {     println("The shopping list is empty.")
        } else {     println("The shopping list is not empty.")
        }
        
        shoppingList[0] = "car"
        for element in shoppingList {
            if element != shoppingList.last {
                print(element + " ")
            }
            else {
                println(element)
            }
           
        }
        for (index, value) in enumerate(shoppingList) {println("Item \(index + 1): \(value)")
        }
        
    }
    
    // 2014-12-14, i am studying how to use dictionary in swift.
    func testDictionary() {
        println("** Show how to use Dictionary**")
        var airports :Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Durbian", "China": "Beijing T3"]
        println("The dictionary of airports contains \(airports.count) items.")
        airports["Taiwan"] = "Taoyuan"
        println("The dictionary of airports contains \(airports.count) items.")
        airports["China"] = "Beijing T2"
        var ch = airports["China"]!
        println("The airport of china is : \(ch)")
        
        if let oldValue = airports.updateValue("Dublin International", forKey: "DUB") {
            println("The old value for DUB was \(oldValue).")
        }
        
        if let removedValue = airports.removeValueForKey("DUB") {
            println("The removed airport's name is \(removedValue).")
        } else {
            println("The airports dictionary does not contain a value for DUB.")
        }
        println("The dictionary of airports contains \(airports.count) items.")
        
        for (airportcode, airportname) in airports
        {
            println("\(airportcode) : \(airportname)")
        }
        
        for airportCode in airports.keys {
            println("Airport code: \(airportCode)")
        }
        // Airport code: TYO
        // Airport code: LHR
        for airportName in airports.values {
            println("Airport name: \(airportName)")
        }

        
    }
    
    func testBasicControl() {
        println("** Show how to use Where**")

        let yetAnotherPoint = (1, -1)
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            println("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            println("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
            println("(\(x), \(y)) is just some arbitrary point")
        }
        
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        }
        println(description)
    }
    
    // 2014-12-15 Study how to use function and function type.
    func testFunction() {
        println("** Show how to use function :**")
        println("the result of function call of halfOpenRangeLenght is: \(halfOpenRangeLength(3,end: 5))")
        
        var currentValue = 3
        let moveNearerToZero = chooseStepFunction(currentValue > 0)
        var result = moveNearerToZero(3)
        println(result)
    }
    
    func halfOpenRangeLength(start: Int, end: Int) -> Int {
        return end - start
    }
    
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    // function type
    func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
        return backwards ? stepBackward : stepForward
    }
    
    func backwards(s1: String, s2: String) -> Bool {
        return s1 > s2
    }
    
    //2014-12-16 study how to use block.
    func testBlock() {
        var namelist = ["CAT", "TOM","LUCY","KEVIN"]
//        namelist.sort{$1<$0}
        for name in namelist{
            println(name)
        }
        //the second parameter is the block writing style.
        var reversed: () = sort(&namelist, { (s1: String, s2: String) -> Bool in
            return s1 > s2
        })
        for name in namelist{
            println(name)
        }
    }
    

    
    //2014-12-21 study how to use willSet and didSet functions
    let step : StepCounter = StepCounter()
    func testWillSet() {
        step.totalStep = 200
        step.totalStep = 500
    }
    // 2014-12-29 study how to use Tyep check
    let library = [
        Movie(name: "Casablanca", director: "Michael Curtiz"),
        Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
        Movie(name: "Citizen Kane", director: "Orson Welles"),
        Song(name: "The One And Only", artist: "Chesney Hawkes"),
        Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
    ]
    
    let someObjects: [AnyObject] = [
        Movie(name: "2001: A Space Odyssey", director: "Stanley Kubrick"),
        Movie(name: "Moon", director: "Duncan Jones"),
        Movie(name: "Alien", director: "Ridley Scott")
    ]
    
    func testTypeCheck() {
        var movieCount = 0
        var songCount = 0
        
        for item in library {
            if item is Movie {
                ++movieCount
            } else if item is Song {
                ++songCount
            }
        }
        
        println("Media library contains \(movieCount) movies and \(songCount) songs")
        
        for item in library {
            if let movie = item as? Movie{
                println("Movie: '\(movie.name)', dir. \(movie.director)")
            }else if let song = item as? Song{
                println("Song: '\(song.name)', by \(song.artist)")
            }
        }
        
        for object in someObjects {
            let movie = object as Movie
            println("Movie: '\(movie.name)', dir. \(movie.director)")
        }
        
        var things = [Any]()
        
        things.append(0)
        things.append(0.0)
        things.append(42)
        things.append(3.14159)
        things.append("hello")
        things.append((3.0, 5.0))
        things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
        
        for thing in things {
            switch thing {
            case 0 as Int:
                println("zero as an Int")
            case 0 as Double:
                println("zero as a Double")
            case let someInt as Int:
                println("an integer value of \(someInt)")
            case let someDouble as Double where someDouble > 0:
                println("a positive double value of \(someDouble)")
            case is Double:
                println("some other double value that I don't want to print")
            case let someString as String:
                println("a string value of \"\(someString)\"")
            case let (x, y) as (Double, Double):
                println("an (x, y) point at \(x), \(y)")
            case let movie as Movie:
                println("a movie called '\(movie.name)', dir. \(movie.director)")
            default:
                println("something else")
            }
        }
    }
    
    func testOptional() {
        var name :String?
        name = "kevin"
        var sex : String?
        
        // At this point, i use the force unwarp to do it, there will be fatal exception if i donot give the init value of name.
        println("the name is : \(name!)")
        if let mySex = sex {
            println("the content of Sex is : \(mySex)")
        } else {
            println("The content of Sex is nil")
        }
    }

}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}

class StepCounter {
    var totalStep:Int = 0 {
        willSet {
            println("The new steps is : \(newValue)")
            
        }
        didSet {
            if (oldValue < totalStep) {
                println("The add steps is : \(totalStep - oldValue)")
            }
            
        }
    }
}

//2014-12-27 sutudy 'is' 'as' operator downcasting

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie :MediaItem{
    var director:String
    init(name:String, director: String){
        self.director = director
        super.init(name: name)
    }
    
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String)
    {
        self.artist = artist
        super.init(name: name)
    }
}


