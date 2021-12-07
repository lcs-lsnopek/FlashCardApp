//
//  CardModel.swift
//  FlashCardApp
//
//  Created by Logan Snopek on 2021-12-07.
//

import Foundation

struct Card: Equatable {
    
    let question: String
    let awnser: String
    
}

let listOfCards = [
    Card(question: "What's \"power house\" of a cell",
         awnser: "Miochondria")
    
    ,
    
    Card(question: "What is the largest bone in the human body",
         awnser: "The Femur")
    
    ,
    
    Card(question: "What is the acceleration due to Gravity",
         awnser: "9.80 meters a second")
]
