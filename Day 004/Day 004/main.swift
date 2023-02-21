//
//  main.swift
//  Day 004
//
//  Created by Shaheem PP on 21/02/23.
//

import Foundation

// --------------------------------------------------- For Loop ---------------------------------------------------

let count1 = 1...10
for i in count1{
    print(i,terminator: i == 10 ? "\n" : ", ")
}
// OR
for i in 1...10{
    print(i,terminator: i == 10 ? "\n" : ", ")
}


let prophets = ["Adam (peace be upon him)", "Idris (Enoch, peace be upon him)", "Nuh (Noah, peace be upon him)", "Hud (peace be upon him)", "Salih (peace be upon him)", "Ibrahim (Abraham, peace be upon him)", "Lut (Lot, peace be upon him)", "Ismail (Ishmael, peace be upon him)", "Ishaq (Isaac, peace be upon him)", "Yaqub (Jacob, peace be upon him)", "Yusuf (Joseph, peace be upon him)", "Ayyub (Job, peace be upon him)", "Shuayb (Jethro, peace be upon him)", "Musa (Moses, peace be upon him)", "Harun (Aaron, peace be upon him)", "Dawud (David, peace be upon him)", "Sulayman (Solomon, peace be upon him)", "Ilyas (Elijah, peace be upon him)", "Al-Yasa (Elisha, peace be upon him)", "Yunus (Jonah, peace be upon him)", "Zakariyya (Zechariah, peace be upon him)", "Yahya (John the Baptist, peace be upon him)", "Isa (Jesus, peace be upon him)", "Muhammad (peace be upon him)", "Dhul-Kifl (Ezekiel, peace be upon him)"]


for prophet in prophets {
    print(prophet, terminator: prophet == prophets[prophets.count-1] ? "\n" : ", ")
}

for (index, prophet) in prophets.enumerated(){
    let number = String(format: "%02d", index + 1)
    print(number, prophet)
}

for _ in 0..<10{
    print("Messi....")
}

//As an example, we could write some code to calculate the times tables from 1 through 10 like this:

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
//If we wanted to exit part-way through we need to do two things. First, we give the outside loop a label, like this:

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
//Second, add our condition inside the inner loop, then use break outerLoop to exit both loops at the same time:

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
//With a regular break, only the inner loop would be exited – the outer loop would continue where it left off.


// -------------------------------------------------- While Loop --------------------------------------------------

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }else if countDown == 5 {
        print("skipping 5")
        continue
    }
    
    
    
}

print("Blast off!")
