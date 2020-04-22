//
//  ViewController.swift
//  Virtual Coffee Machine
//
//  Created by Anna Luchechko on 10.04.2020.
//  Copyright © 2020 Anna Luchechko. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var coffeeMachine = CoffeeMachine()
    
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        statusLabel.text = coffeeMachine.status
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingsViewController = segue.destination as? SettingsViewController {
            settingsViewController.coffeeMachine = coffeeMachine
        }
    }

    @IBAction func cappucino(_ sender: UIButton) {
        coffeeMachine.makeCoffee(coffee: coffeeMachine.cappuccino)
        statusLabel.text = coffeeMachine.status
    }
    
    @IBAction func americano(_ sender: UIButton) {
        coffeeMachine.makeCoffee(coffee: coffeeMachine.americano)
        statusLabel.text = coffeeMachine.status
    }

}

