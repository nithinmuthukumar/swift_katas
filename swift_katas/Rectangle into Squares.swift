//
//  Rectangle into Squares.swift
//  swift_katas
//
//  Created by nithin muthukumar on 2019-07-17.
//  Copyright © 2019 nithin muthukumar. All rights reserved.
//

import Foundation
func sqInRect(_ lng: Int, _ wdth: Int) -> [Int]? {
    
    if lng==wdth{
        return nil;
    }
    var squares=[Int]()
    var l=lng
    var w=wdth
    
    while l != 0&&w != 0{
        let sqSize=min(l,w)
        squares.append(sqSize)
        if(l>w){
            l-=sqSize
        }else{
            w-=sqSize
        }
    }
    return squares
}
