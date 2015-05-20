//
//  ColorWheel.swift
//  FunFacts
//
//  Created by Jake Sulkoske on 1/19/15.
//  Copyright (c) 2015 Sulk. All rights reserved.
//

import Foundation
import UIKit

struct ColorWheel{
    let colorsArray = [
        UIColor(red: 90/225.0, green: 187/225.0, blue: 181/225.0, alpha: 1.0), //teal
        UIColor(red: 223/225.0, green: 86/225.0, blue: 94/225.0, alpha: 1.0), //red
        UIColor(red: 239/225.0, green: 130/225.0, blue: 100/225.0, alpha: 1.0), //orange
        UIColor(red: 77/225.0, green: 75/225.0, blue: 82/225.0, alpha: 1.0), //dark
        UIColor(red: 85/225.0, green: 176/225.0, blue: 112/225.0, alpha: 1.0) //green
    ]
func randomColor()-> UIColor{
    var unsignedArrayCount = UInt32(colorsArray.count)
    var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
    var randomNumber = Int(unsignedRandomNumber)

    return colorsArray[randomNumber]
    }
}