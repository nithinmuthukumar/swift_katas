//
//  Partitions.swift
//  swift_katas
//
//  Created by nithin muthukumar on 2019-07-18.
//  Copyright © 2019 nithin muthukumar. All rights reserved.
//

import Foundation
func part(_ n: Int) -> String {
    var a=[Int]()
    for i in 0...n{
        a.append(0)
    }
    var k=1
    a[1]=n
    var l=Set<Int>()
    while k != 0{
        var x=a[k-1]+1
        var y=a[k]-1
        k-=1
    
        while x<=y{
            a[k]=x
            y-=x
            k+=1
        }
        a[k]=x+y
        l.insert(a[0...k].reduce(1,{
            x,y in x*y
        }))
    }
    let sortedProds=l.sorted()
    var median=l.count%2 == 0 ? Double((sortedProds[sortedProds.count/2]+sortedProds[sortedProds.count/2-1]))/2.0:Double(sortedProds[sortedProds.count/2])

    return String(format: "Range: %d Average: %.2f Median: %.2f", sortedProds.last!-sortedProds[0],Double(l.reduce(0,{x,y in x+y}))/Double(sortedProds.count),median)
}
