//
//  RecipesAppApp.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import SwiftUI

@main
struct RecipesAppApp: App {
    var body: some Scene {
        WindowGroup {
            RecipeView(recipe: Recipe(name: "Simple Cake", prep_time: 10, cook_time: 30, serving: 5))
        }
    }
}
