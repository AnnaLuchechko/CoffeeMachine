//
//  CoffeeMachine.swift
//  Virtual Coffee Machine
//
//  Created by Anna Luchechko on 11.04.2020.
//  Copyright © 2020 Anna Luchechko. All rights reserved.
//

class CoffeeMachine {
    
    struct CoffeeIngredients {
        var name: String
        var water: Int
        var coffeeBeans: Int
        var milk: Int
        var dripTray: Int
    }
    
    enum Drinks {
        case Cappucino, Americano
    }
    
    private func getCoffeeIngridients(drink: Drinks) -> CoffeeIngredients {
        switch drink {
        case .Americano:
            return americano
        case .Cappucino:
            return cappuccino
        }
    }
    
    private var coffeeMachine: CoffeeIngredients = CoffeeIngredients (name: "", water: 0, coffeeBeans: 0, milk: 0, dripTray: 5)
    private var coffeeMachineTanks: CoffeeIngredients = CoffeeIngredients (name: "", water: 2000, coffeeBeans: 500, milk: 1000, dripTray: 5)
    private var americano: CoffeeIngredients = CoffeeIngredients (name: "americano", water: 500, coffeeBeans: 125, milk: 0, dripTray: 1)
    private var cappuccino: CoffeeIngredients = CoffeeIngredients (name: "cappuccino", water: 1000, coffeeBeans: 125, milk: 500, dripTray: 1)
    
    private var _status: String = ""
    
    var status: String {
        get { return _status }
    }
    
    func addWater() {
        coffeeMachine.water = coffeeMachineTanks.water
        _status = "Water in tank now = \(coffeeMachine.water)"
    }
    
    func addCoffeeBeans() {
        coffeeMachine.coffeeBeans = coffeeMachineTanks.coffeeBeans
        _status = "Coffee beans in tank now = \(coffeeMachine.coffeeBeans)"
    }

    func addMilk() {
        coffeeMachine.milk = coffeeMachineTanks.milk
        _status = "Milk in tank now = \(coffeeMachine.milk)"
    }

    func cleanDripTray() {
        coffeeMachine.dripTray = coffeeMachineTanks.dripTray
        _status = "Drip tray is clean now"
    }

    private func takeIngredients(coffee: CoffeeIngredients) {
        coffeeMachine.water -= coffee.water
        coffeeMachine.coffeeBeans -= coffee.coffeeBeans
        coffeeMachine.milk -= coffee.milk
        coffeeMachine.dripTray -= coffee.dripTray
    }
    
    private func checkIngredients(coffee: CoffeeIngredients) -> Bool {
        if coffeeMachine.water < coffee.water {
            _status = "Please, add water"
            return false
        }
        if coffeeMachine.coffeeBeans < coffee.coffeeBeans {
            _status = "Please, add coffee beans"
            return false
        }
        if coffeeMachine.milk < coffee.milk {
            _status = "Please, add milk"
            return false
        }
        if coffeeMachine.dripTray < coffee.dripTray {
            _status = "Please, clean drip tray"
            return false
        }
        return true
    }

    func makeCoffee(drink: Drinks) {
        if checkIngredients(coffee: getCoffeeIngridients(drink: drink)) {
            takeIngredients(coffee: getCoffeeIngridients(drink: drink))
            _status = "Your \(getCoffeeIngridients(drink: drink).name) is ready now"
        }
    }
}

