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
    
    var coffeeMachine: CoffeeIngredients = CoffeeIngredients (name: "", water: 0, coffeeBeans: 0, milk: 0, dripTray: 5)
    var coffeeMachineTanks: CoffeeIngredients = CoffeeIngredients (name: "", water: 2000, coffeeBeans: 500, milk: 1000, dripTray: 5)
    var americano: CoffeeIngredients = CoffeeIngredients (name: "americano", water: 500, coffeeBeans: 125, milk: 0, dripTray: 1)
    var cappuccino: CoffeeIngredients = CoffeeIngredients (name: "cappuccino", water: 1000, coffeeBeans: 125, milk: 500, dripTray: 1)
    var status: String = ""
    
    func addWater() {
        coffeeMachine.water = coffeeMachineTanks.water
        status = "Water in tank now = \(coffeeMachine.water)"
    }
    
    func addCoffeeBeans() {
        coffeeMachine.coffeeBeans = coffeeMachineTanks.coffeeBeans
        status = "Coffee beans in tank now = \(coffeeMachine.coffeeBeans)"
    }

    func addMilk() {
        coffeeMachine.milk = coffeeMachineTanks.milk
        status = "Milk in tank now = \(coffeeMachine.milk)"
    }

    func cleanDripTray() {
        coffeeMachine.dripTray = coffeeMachineTanks.dripTray
        status = "Drip tray is clean now"
    }

    func takeIngredients(coffee: CoffeeIngredients) {
        coffeeMachine.water -= coffee.water
        coffeeMachine.coffeeBeans -= coffee.coffeeBeans
        coffeeMachine.milk -= coffee.milk
        coffeeMachine.dripTray -= coffee.dripTray
    }
    
    func checkIngredients(coffee: CoffeeIngredients) -> Bool {
        if coffeeMachine.water < coffee.water {
            status = "Please, add water"
            return false
        }
        if coffeeMachine.coffeeBeans < coffee.coffeeBeans {
            status = "Please, add coffee beans"
            return false
        }
        if coffeeMachine.milk < coffee.milk {
            status = "Please, add milk"
            return false
        }
        if coffeeMachine.dripTray < coffee.dripTray {
            status = "Please, clean drip tray"
            return false
        }
        return true
    }

    func makeCoffee(coffee: CoffeeIngredients) {
        if checkIngredients(coffee: coffee) {
            takeIngredients(coffee: coffee)
            status = "Your \(coffee.name) is ready now"
        }
    }
}

