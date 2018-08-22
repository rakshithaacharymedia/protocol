//: Playground - noun: a place where people can play

import UIKit

import PlaygroundSupport

//1 way of using closure
let multiply={(num1:Int,num2:Int)->Int in
    return num1*num2
}
let result=multiply(100,2)
print("Result is ",result)
////////////

//2nd way of using closure
let divide:(Int,Int)->Int={(num1:Int,num2:Int)in
    return num1/num2
}
print(divide(10,2))

//using shorthand opertor

let sub:(Int,Int)->Int={ $0-$1}  //return optional if single line exists
print(sub(5,6))


//closure without any input

let printsomething:()->()={print("hello world")
}

printsomething()



let close:(Int,Int)->Int={let w=$0+$1
    return w                              //return compulsory since multiple statements
}


print("The sum of 2 numbers is ",close(5,6))


class a
{
    let sub:(Int,Int)->Int={ $0-$1}  //return optional if single line exists
    var x:Int=65
    let square:(Int)->Int={$0*$0}
    func display()
    {
        print("The value of x is ",x)
        let squareOfnumber=square(x)          //accessing closure within a function
        print("The square of the number ",x," is ",squareOfnumber)
    }
}


var obj=a()
print(obj.sub(5,6))
obj.display()
