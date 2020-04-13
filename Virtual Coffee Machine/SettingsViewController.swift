//
//  ViewController.swift
//  Virtual Coffee Machine
//
//  Created by Anna Luchechko on 10.04.2020.
//  Copyright © 2020 Anna Luchechko. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {
    
    var coffeeCup: CoffeeMachine!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func willMove(toParent parent: UIViewController?) {
        let navigationController = parent as? UINavigationController
        if let viewController = navigationController?.viewControllers[0] as? ViewController {
            viewController.coffeeCup = coffeeCup
        }
    }

    @IBAction func addWater(_ sender: Any) {
        coffeeCup.addWater()
    }

    @IBAction func addCoffeeBeans(_ sender: Any) {
        coffeeCup.addCoffeeBeans()
    }
    
    @IBAction func addMilk(_ sender: Any) {
        coffeeCup.addMilk()
    }
    
    @IBAction func cleanDripTray(_ sender: Any) {
        coffeeCup.cleanDripTray()
    }
    
}

