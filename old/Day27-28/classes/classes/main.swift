//
//  main.swift
//  classes
//
//  Created by Shaheem PP on 06/06/22.
//

import Foundation

print("Hello, World!")

var kirmaada = Enemy()

print(kirmaada.health)
kirmaada.move()
kirmaada.attack()

var toothless = Dragon()
toothless.fly()
toothless.move()

toothless.speak(msg: "I'm the Alpha!")
toothless.attackStrength = 15
toothless.attack()
