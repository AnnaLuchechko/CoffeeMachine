//
//  ViewController.swift
//  Virtual Coffee Machine
//
//  Created by Anna Luchechko on 10.04.2020.
//  Copyright © 2020 Anna Luchechko. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var coffeeMachine: CoffeeMachine!
    
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeMachine = CoffeeMachine()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        answer.text = coffeeMachine.answer
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingsViewController = segue.destination as? SettingsViewController {
            settingsViewController.coffeeMachine = coffeeMachine
        }
    }

    @IBAction func cappucino(_ sender: UIButton) {
        coffeeMachine.makeCoffee(coffee: coffeeMachine.cappuccino)
        answer.text = coffeeMachine.answer
    }
    
    @IBAction func americano(_ sender: UIButton) {
        coffeeMachine.makeCoffee(coffee: coffeeMachine.americano)
        answer.text = coffeeMachine.answer
    }

}

