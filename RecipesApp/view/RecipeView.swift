//
//  RecipeView.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import Foundation

import SwiftUI

struct RecipeView: View {
    
    let recipe: Recipe
    
    var body: some View {
        HStack(spacing: 16){
            Text(recipe.name)
                .lineLimit(1)
                .truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("\(recipe.prep_time)")
            Text("\(recipe.cook_time)")
            Text("\(recipe.serving)")

        }
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    RecipeView(recipe: Recipe(name: "Simple Cake", prep_time: 10, cook_time: 30, serving: 5))
}

