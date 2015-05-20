//
//  ViewController.swift
//  FunFacts
//
//  Created by Jake Sulkoske on 1/19/15.
//  Copyright (c) 2015 Sulk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FunFactLabel: UILabel!
    
    @IBOutlet weak var FunFactButton: UIButton!
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FunFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        FunFactButton.tintColor = randomColor
        FunFactLabel.text = factBook.randomFact()
    }

}

