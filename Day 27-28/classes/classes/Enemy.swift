//
//  Enemy.swift
//  classes
//
//  Created by Shaheem PP on 06/06/22.
//

import Foundation


class Enemy{
    var health = 100
    var attackStrength = 10
    func move(){
        print("Go forward")
    }
    func attack(){
        print("land a hit of strength \(attackStrength)")
    }
}
