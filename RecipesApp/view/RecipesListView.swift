//
//  RecipesListView.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import Foundation
import SwiftUI


struct RecipesListView: View {
    let repository = Injector.recipesRepository
    
    var body: some View {
        VStack {
            List(repository.recipes){recipe in RecipeView(recipe: recipe)
            }
        }
    }
}

#Preview { 
    RecipesListView()
}
