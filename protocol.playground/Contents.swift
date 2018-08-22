//: Playground - noun: a place where people can play

import UIKit


protocol information{
    init(locomotion:String,age:Int)               //protocol with initializer
    var locomotion:String{get set}
    var age:Int{get}
    func displayInformation()
    static func displayInformation2()        //static function inside a protocol
    
}
protocol information2 {
    func displayInformation3()
}
extension information{                                    //extension for protocol
   static func displayInformation2(){
       print("protocols can have static functions")
    }
}
class forprotocol:information,information2{              //multiple protocol inherited
    var locomotion: String
    var age:Int
    required init(locomotion:String,age:Int) {
        self.locomotion = locomotion
        self.age=age
        
    }
    func displayInformation() {
        print(locomotion)
    }
    func displayInformation3() {
        print("from different protocol")
    }
}
class forprotocol2:information2{
    func displayInformation3() {
        print("In forprotocol2 class")
    }
}


var p=forprotocol(locomotion: "leg",age:5)
p.displayInformation()
forprotocol.displayInformation2()
p.displayInformation3()
p.age=55
p.locomotion="wing"
print(p.age)
print(p.locomotion)
//////////////




var p1=forprotocol2()
p1.displayInformation3() 
