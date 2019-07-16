//
//  HighTideLowTide.swift
//  swift_katas
//
//  Created by nithin muthukumar on 2019-07-16.
//  Copyright © 2019 nithin muthukumar. All rights reserved.
//

import Foundation
func highTideLowTide(){
    readLine()
    var tides=readLine()!.components(separatedBy: " ").map {Int($0)!}.sorted()
    var s=[String]()
    while tides.count>0{
        s.append(String(tides.popLast()!))
        s.append(String(tides.removeFirst()))
    }
    print(String(s.reversed().joined(separator: " ")))
}
