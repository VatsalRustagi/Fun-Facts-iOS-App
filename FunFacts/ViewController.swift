//
//  ViewController.swift
//  FunFacts
//
//  Created by Vatsal Rustagi on 10/15/16.
//  Copyright © 2016 Vatsal Rustagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = FactModel().getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let bgcolor = ColorModel().getRandomFact()
        view.backgroundColor = bgcolor
        funFactButton.tintColor = bgcolor
        funFactLabel.text = FactModel().getRandomFact()
    }

}

