//
//  ViewController.swift
//  Virtual Coffee Machine
//
//  Created by Anna Luchechko on 10.04.2020.
//  Copyright © 2020 Anna Luchechko. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    
    var coffeeMachine = CoffeeMachine()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        statusLabel.text = coffeeMachine.status
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingsViewController = segue.destination as? SettingsViewController {
            settingsViewController.coffeeMachine = coffeeMachine
        }
    }
    
    @IBAction func makeCoffee(_ sender: UIButton) {
        var coffee: CoffeeMachine.CoffeeIngredients
        switch sender.tag {
        case 0:
            coffee = coffeeMachine.cappuccino
            break
        case 1:
            coffee = coffeeMachine.americano
            break
        default:
            coffee = coffeeMachine.americano
            break
        }
        coffeeMachine.makeCoffee(coffee: coffee)
        statusLabel.text = coffeeMachine.status
    }

}

