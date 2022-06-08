//
//  Tip.swift
//  Tip Calculator 2.0
//
//  Created by Shaheem PP on 08/06/22.
//

import Foundation


struct Tip{
    var tipPercent : Float = 2.0
    var peopleStrength : Float = 1.0
    var billAmount : Float = 0.0
    var y : Float = 0.0
    
    mutating func countTip(tip:Float, people : Float, bill : Float) -> String{
        tipPercent = tip
        peopleStrength = people
        billAmount = bill
        
        y = tipPercent / 100
        y = y * billAmount
        y = y + billAmount
        y = y / peopleStrength
        
        return "\(y)$ per person"
    }
}
