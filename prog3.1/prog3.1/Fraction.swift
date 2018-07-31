//
//  Fraction.swift
//  prog2.1
//
//  Created by Hena Malhotra on 7/18/18.
//  Copyright © 2018 Hena. All rights reserved.
//

import Foundation

class Fraction : CustomStringConvertible {
    private let num: Int; //let = constant
    private let den: Int;
    
    var decimal: Float {
        get {
            return Float(self.num)/Float(self.den);
        }
    }
    
    var description: String {
        if (den == 1){
            return "\(self.den)"
        }
        
        if (num == 0){
            return "\(self.num)"
        }
        
        if(num > den){
            //do the math
            //num/den;
            //num%den;
            
            return "\(self.num)/\(self.den)"
        }
      
        return "\(self.num)/\(self.den)"
        
    }
    
    convenience init() { //convenience because it ues another init method
        self.init(num : 0, den : 1)
    }
    
    init(num : Int, den : Int){ //signature is the same
        assert(den != 0, "Denominator cannot be zero")
        
        // Arguments are constants, redefine them
        // as variables
        var num = num;
        var den = den;
        
        if(den < 0) {
            // If the denominator is negative
            // multiply the numerator and
            // denominator by -1 - this
            // ensures the denominator is
            // always positive, and numerator
            // carries the appropriate sign
            num = -num
            den = -den
        }
        
        // Find greatest common denominator
        for gcd in (1...den).reversed() {
            if(num%gcd == 0 && den%gcd==0) {
                // Common denominator found,
                // divide numerator and denominator
                num /= gcd
                den /= gcd
                break
            }
        }
        
        self.num = num
        self.den = den
    }
    
    convenience init(num : Int){
        self.init(num: num, den: 1);
    }
    func add(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den + self.den*f.num,
                        den: self.den*f.den)
    }
    
    func subtract(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den - self.den*f.num,
                        den: self.den*f.den)
    }
    
    func multiply(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.num, den: self.den*f.den)
    }
    
    func divide(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den, den: self.den*f.num)
    }
    
    /**
     Add a fraction to fraction.
     
     - parameter f1: Fraction to add to
     - parameter f2: Fraction to be added
     
     - returns: The result of f1 + f2.
     */
    static func add(_ f1: Fraction, to f2: Fraction) -> Fraction {
        return Fraction(num: f1.num*f2.den + f1.den*f2.num,
                        den: f1.den*f2.den)
    }
    
    /**
     Subtract a fraction from fraction.
     
     - parameter f1: Fraction to subtract
     - parameter f2: Fraction to subtract from
     
     - returns: The result of f2 - f1.
     */
    static func subtract(_ f1: Fraction, from f2: Fraction) -> Fraction {
        return f2.subtract(f1);
    }
    
    /**
     Multiply a fraction by fraction.
     
     - parameter f1: Fraction to multiply
     - parameter f2: Fraction to multiply by
     
     - returns: The result of f1*f2.
     */
    static func multiply(_ f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    
    /**
     Divide a fraction by fraction.
     
     - parameter f1: Fraction to divide
     - parameter f2: Fraction to divide by
     
     - returns: The result of f1/f2.
     */
    static func divide(_ f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
    
    /**
     Adds an integer to self.
     
     - parameter x: Integer to add to self
     
     - returns: Fraction The result of adding x to self.
     */
    func add(_ x: Int) -> Fraction {
        return Fraction(num: self.num + self.den*x,
                        den: self.den)
    }
    
    /**
     Subtracts an integer from self.
     
     - parameter x: Integer to subtract from self
     
     - returns: Fraction The result of subtracting x from self.
     */
    func subtract(_ x: Int) -> Fraction {
        return Fraction(num: self.num - self.den*x,
                        den: self.den)
    }
    
    /**
     Multiplies self by an integer.
     
     - parameter x: Integer to multiply self by
     
     - returns: Fraction The result of multiplying self by x.
     */
    func multiply(_ x: Int) -> Fraction {
        return Fraction(num: self.num*x, den: self.den)
    }
    
    /**
     Divides self by an integer.
     
     - parameter x: Integer to divide self by
     
     - returns: Fraction The result of dividing self by x.
     */
    func divide(_ x: Int) -> Fraction {
        return Fraction(num: self.num, den: self.den*x)
    }
}
    /**
     + operator between two Fractions
     */
    func +(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.add(f2)
    }
    
    /**
     - operator between two Fractions
     */
    func -(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.subtract(f2)
    }
    
    /**
     * operator between two Fractions
     */
    func *(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    
    /**
     / operator between two Fractions
     */
    
    func /(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
