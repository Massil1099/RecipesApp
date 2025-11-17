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
            Image(recipe.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipped()
            
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

