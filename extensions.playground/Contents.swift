//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

//var str = "Hello, playground"

print("hello".characters.count)


extension String{
    var ispassword:Bool{
    let characterCount=self.characters.count
    if characterCount>6 && characterCount<10
    {
    return true
    }
    else
    {
    return false
    }
}
}
////////////
let x="hello".ispassword
print(x)

extension Int{
    var square:Int{
        return self*self
    }
}

print(2.square)

///////////

struct sum {
    var num1 = 100
    var num2 = 200
}

struct diff {
    var no1 = 200
    var no2 = 100
}

struct mult {
    var a = sum()
    var b = diff()
}

let calc = mult()
print ("Inside mult block \(calc.a.num1, calc.a.num2)")
print("Inside mult block \(calc.b.no1, calc.b.no2)")

let memcalc = mult(a: sum(num1: 300, num2: 500),b: diff(no1: 300, no2: 100))
print("Inside mult block \(memcalc.a.num1, memcalc.a.num2)")
print("Inside mult block \(memcalc.b.no1, memcalc.b.no2)")

extension mult {
    init(x: sum, y: diff) {
        let X = x.num1 + x.num2
        let Y = y.no1 + y.no2
        print(X)
        print(Y)
    }
}

let d = sum(num1: 100, num2: 200)
print("Inside Sum Block:\( d.num1, d.num2)")

let e = diff(no1: 200, no2: 100)
print("Inside Diff Block: \(e.no1, e.no2)")

/////////

extension Int{
    func display(){
        print("Inside extension displaying number",self)
    }
}

5.display()



/////////////////

extension String{
    mutating func concatinate(variable:String)->String
    {
   
    self=self+variable
    return self
}
}

var s1="hello"
s1.concatinate(variable: "world")
s1.concatinate(variable: "welcome")
///////

extension Double {
 mutating func square()->Double{
        let pi = 3.1415
        self=pi * self * self
        return self
    }
}

var Trial1 = 3.3
var result1=Trial1.square()
print("Area of circle is: \(result1)")
print(Trial1)

var Trial2 = 5.8
var result2=Trial2.square()
print("Area of circle is: \(result2)")

var Trial3 = 120.3
var result3=Trial3.square()
print("Area of circle is: \(result3)")
