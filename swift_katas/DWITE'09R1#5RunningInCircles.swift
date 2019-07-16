//
//  DWITE'09R1#5RunningInCircles.swift
//  swift_katas
//
//  Created by nithin muthukumar on 2019-07-16.
//  Copyright © 2019 nithin muthukumar. All rights reserved.
//

import Foundation
func lengthCycle(_ paths:[Int:[Int]])-> Int{
    var visited = Set<Int>()
    var queue=Queue<(Int,Int)>()
    queue.enqueue((1,0))
    while true{
        let item=queue.dequeue()!
        let next=item.0
        let dist=item.1
        if(paths[next]==nil){
            continue;
        }
        for i in paths[next]!{
            if visited.contains(i){
                return dist
            }
            
            visited.insert(i)
            queue.enqueue((i,dist+1))
        }
        
    }

}
func runningInCircles(){
    for _ in 0..<5{
        let v=Int(readLine()!)!
        var paths=[Int:[Int]]()
        
        for _ in 0..<v{
            var x=readLine()!.components(separatedBy: " ").map{Int($0)!}
            if paths[x[0]]==nil{
                paths[x[0]]=[Int]()
            }
            paths[x[0]]?.append(x[1])
        }
        print(lengthCycle(paths))
    }
    
    
    
    
}
