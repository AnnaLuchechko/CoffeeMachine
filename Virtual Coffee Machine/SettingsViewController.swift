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
    
    @IBAction func cofeeService(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            coffeeMachine.addWater()
            break
        case 1:
            coffeeMachine.addCoffeeBeans()
            break
        case 2:
            coffeeMachine.addMilk()
            break
        case 3:
            coffeeMachine.cleanDripTray()
            break
        default:
            break
        }
    }

}

