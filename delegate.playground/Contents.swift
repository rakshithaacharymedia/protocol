//: Playground - noun: a place where people can play

import UIKit

import PlaygroundSupport

protocol greetingDelegate{
    var word:String{get}
    func greet()
    func thanks()
}
class animal{
     var delegate:greetingDelegate?
    
     func inactive()
     {
        print("im an animal,always inactive")
    }
}
class human:greetingDelegate{
    var word: String="Hey"
    var word2:String="bye"
    func greet() {
        print(word,"hello.. how are you")
    }
    
    func onlyhuman()
    {
        print("Only accessible to human class")
    }
    func thanks() {
        print(word2,"Thank you")
    }
}

let h=human()
var a=animal()
h.greet()
h.onlyhuman()
a.delegate=human()
print("USING DELEGATE")
a.delegate?.greet()//a initialized with human object
a.delegate?.thanks()
//a.delegate?.onlyhuman()              //error since onlyhuman belongs to human class not to protocol
var a2=animal()
a2.delegate?.greet() //since no object initialized to a2         //nil output


a.inactive()


//example 2
////////////////////////////////////////////
protocol work{
    func doWork(job:String)
}

class person1{
    var delegate:work?
    func display()
    {
        print("Im in class person1")
    }
    func display2()
    {
        delegate?.doWork(job: "sing")             //1
        
    }
}

class person2:work{
    func doWork(job: String) {
        print("ill ",job)
    }
}


var p2=person2()
p2.doWork(job:"do app")
var p1=person1()
p1.delegate=p2
p1.delegate?.doWork(job: "do website")   //2
p1.display()
p1.display2()           //since p1.delegate=p2
