//
//  main.swift
//  BOJ_11655
//
//  Created by woong on 29/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

//  a  97
//  z  122
//  A  65
//  Z  90

extension Character {
    var isAscii: Bool {
        return unicodeScalars.first?.isASCII == true
    }
    var ascii: UInt32? {
        return isAscii ? unicodeScalars.first?.value : nil
    }
}

if let str = readLine() {

    var newUInts: [UInt32] = []
    var newStrs = ""

    for c in str {
        if let uni = c.ascii {
            if uni >= 97 && uni <= 122 {
                let newUni = uni + 13
                newUInts.append(newUni > 122 ? 97 + (newUni % 123) : newUni)
            } else if uni >= 65 && uni <= 90 {
                let newUni = uni + 13
                newUInts.append(newUni > 90 ? 65 + (newUni % 91) : newUni)
            } else {
                newUInts.append(uni)
            }
        }
    }

    for i in newUInts {
        if let str = UnicodeScalar(i) {
            newStrs += String(str)
        }
    }

    print(newStrs)
}

