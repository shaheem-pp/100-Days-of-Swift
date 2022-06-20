//
//  main.swift
//  ClosurePlayground
//
//  Created by Shaheem PP on 19/06/22.
//

import Foundation

var array = [0,1,2,3,4,5]

let addOne = { (n1:Int) -> Int in
    return n1 + 1
}

array = array.map(addOne)

print(array.map())

print(array)
