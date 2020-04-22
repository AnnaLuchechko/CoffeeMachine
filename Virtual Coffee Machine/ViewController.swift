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
        var coffee: CoffeeMachine.Drinks
        switch sender.tag {
        case 0:
            coffee = .Cappucino
            break
        case 1:
            coffee = .Americano
            break
        default:
            coffee = .Americano
            break
        }
        coffeeMachine.makeCoffee(drink: coffee)
        statusLabel.text = coffeeMachine.status
    }

}

