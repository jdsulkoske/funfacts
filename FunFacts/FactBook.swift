//
//  FactBook.swift
//  FunFacts
//
//  Created by Jake Sulkoske on 1/19/15.
//  Copyright (c) 2015 Sulk. All rights reserved.
//

import Foundation

struct FactBook{
    let factsArray = [
    "My name is Jake Sulkoske",
    "I go to Ball State University",
    "I am a Computer Science Major",
    "I love music and video production",
    "I have two dogs",
    "Another Fun Fact",
    "Snails have teeth",
    "I am 21 years old"
    ]
    func randomFact()->String{
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
}