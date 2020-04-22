//
//  ViewController.swift
//  Virtual Coffee Machine
//
//  Created by Anna Luchechko on 10.04.2020.
//  Copyright © 2020 Anna Luchechko. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {
    
    var coffeeMachine: CoffeeMachine!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func willMove(toParent parent: UIViewController?) {
        let navigationController = parent as? UINavigationController
        if let viewController = navigationController?.viewControllers[0] as? ViewController {
            viewController.coffeeMachine = coffeeMachine
        }
    }

    @IBAction func addWater(_ sender: Any) {
        coffeeMachine.addWater()
    }

    @IBAction func addCoffeeBeans(_ sender: Any) {
        coffeeMachine.addCoffeeBeans()
    }
    
    @IBAction func addMilk(_ sender: Any) {
        coffeeMachine.addMilk()
    }
    
    @IBAction func cleanDripTray(_ sender: Any) {
        coffeeMachine.cleanDripTray()
    }
    
}

