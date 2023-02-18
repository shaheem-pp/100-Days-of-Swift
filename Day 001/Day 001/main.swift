//
//  main.swift
//  Day 001
//
//  Created by Shaheem PP on 18/02/23.
//

import Foundation

print("Hello, World!")

// Day 1 I'm learning about variables, constants and type-annotations

//You make variables using var and constants using let. It’s preferable to use constants as often as possible.

//Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.

//Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.

//String interpolation allows you to create strings from other variables and constants, placing their values inside your string.

//Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.


var name = "Shaheem PP"
var age = 23
let is_learning : Bool = true

print("My name is \(name). I'm \(age) years old.")
print("Is \(name) learning -> \(is_learning)")
let steve_quote = """
Here's to the crazy ones, the misfits, the rebels, the troublemakers, the round pegs in the
square holes
the ones who see things differently -- they're not fond of rules, and they have no respect for
the status quo
You can quote them, disagree with them, glorify or vilify them, but the only thing you can't
do is ignore them because they change things
They push the human race forward, and while some may see them as the crazy ones, we see
genius, because the people who are crazy enough to think that they can change the world,are the
ones who do.
"""
print(steve_quote)

let pi : Float = 3.141
print(pi)
