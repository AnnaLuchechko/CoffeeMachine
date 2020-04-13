//
//  ViewController.swift
//  Virtual Coffee Machine
//
//  Created by Anna Luchechko on 10.04.2020.
//  Copyright © 2020 Anna Luchechko. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var coffeeCup: CoffeeMachine!
    
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeCup = CoffeeMachine()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        answer.text = coffeeCup.answer
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingsViewController = segue.destination as? SettingsViewController {
            settingsViewController.coffeeCup = coffeeCup
        }
    }

    @IBAction func cappucino(_ sender: UIButton) {
        coffeeCup.makeCoffee(coffee: coffeeCup.cappuccino)
        answer.text = coffeeCup.answer
    }
    
    @IBAction func americano(_ sender: UIButton) {
        coffeeCup.makeCoffee(coffee: coffeeCup.americano)
        answer.text = coffeeCup.answer
    }

}

