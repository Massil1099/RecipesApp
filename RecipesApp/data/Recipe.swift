//
//  Recipe.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    var name: String
    var prep_time: Int
    var cook_time: Int
    var serving: Int  // valeur courante du nombre de personnes affiché
    // var baseServing: Int // valeur de référence pour quantities (ex: 12 pour Simple Cake)
    var imageName: String
    // var ingredients: [Ingredient]
    // var directions: String
    
}
