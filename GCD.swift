//
//  GCD.swift
//  
//
//  Created by Xin Jet Chew on 08/02/2017.
//
//

var a = 0
var b = 0

print("Enter a :")
if let typed = readLine() {
    if let num = Int(typed) {
        a = num
    }
}
print("Enter b: ")
if let typed = readLine() {
    if let num = Int(typed) {
        b = num
    }
}

if b > a && a > 0 {
    var tempNum = a
    a = b
    b = tempNum
}

//an = bn.qn + rn
var an = a
var bn = b
var qn = 0
var rn = 0

repeat {
    qn = an / bn
    rn = an % bn
    print("\(an) = \(bn) x \(qn) + \(rn)")
    if rn == 0 {
        print("gcd(\(a),\(b )) = \(bn)")
    }
    an = bn
    bn = rn
} while rn != 0

