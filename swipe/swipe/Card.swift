//
//  Card.swift
//  swipe
//
//  Created by Mansi Chikarmane on 5/19/21.
//

import UIKit

struct Card: Identifiable {
    let id = UUID()
    let name : String
    let imageName: String
    let age: Int
    let bio: String
    // Card x position
    var x: CGFloat = 0.0
    // Card y position
    var y: CGFloat = 0.0
    // Card rotation angle
    var degree: Double = 0.0
    
    static var data: [Card] {
        [
            Card(name: "Rosie", imageName: "p0", age: 21, bio: "Hi I'm Rosie"),
            Card(name: "Chicken Tikka Masala", imageName: "", age: 21, bio: "Delicious dish!"),
            Card(name: "Chicken Tikka Masala", imageName: "", age: 21, bio: "Delicious dish!"),
            Card(name: "Chicken Tikka Masala", imageName: "", age: 21, bio: "Delicious dish!"),
            Card(name: "Chicken Tikka Masala", imageName: "", age: 21, bio: "Delicious dish!"),
            Card(name: "Chicken Tikka Masala", imageName: "", age: 21, bio: "Delicious dish!"),
            Card(name: "Chicken Tikka Masala", imageName: "", age: 21, bio: "Delicious dish!"),
            Card(name: "Chicken Tikka Masala", imageName: "", age: 21, bio: "Delicious dish!")
        ]
    }
}
