//
//  main.swift
//  prog3.1
//
//  Created by Hena Malhotra on 7/25/18.
//  Copyright © 2018 Hena. All rights reserved.
//

import Foundation

//Declare variable x as a SimpleOptional
var x: SimpleOptional;

//Assign NIL optional to x
x = NIL

//Print x
print("x=\(x)")

//Check if x has a value or not
if x == NIL {
    print("x has no value")
} else {
    //If x has a value, unwrap that value
    //and print it
    print("x has a value of \(x.unwrap)")
}

//Assign a value of 3 to x
x = SimpleOptional(value: 3)

//Print x
print("x=\(x)")

//Check if x has a value or not
if x != NIL {
    //If x has a value, unwrap that value
    //and print it
    print("x has a value of \(x.unwrap)")
} else {
    print("x has no value")
}

//Declare vriable z as a SimpleOptional
var z: SimpleOptional

//Assign a Fraction object 1/3 to z
z = SimpleOptional(value: Fraction(num: 1, den: 3))

//Print z
print("z=\(z)")

//Check if z has a value or not
if z != NIL {
    //If z has a value, unwrap that value
    //and print it
    print("z has a value of \(z.unwrap)")
    //If the value of an optional is an object,
    //the optional must be unwrapped in order
    //to access the properties and methods of that object
    
    //Unwrap z and force type cast it to a Fraction object
    let v = z.unwrap as! Fraction
    //Print the computed decimal property
    print("The decimal property of z's value is \(v.decimal)")
} else {
    print("z has no value")
}
