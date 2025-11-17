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
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing:6) {
                Text(recipe.name)
                    .font(.headline)
                    .lineLimit(1)
                    .truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("prep \(recipe.prep_time)mins")
                    .font(.subheadline)
                
                Text("cook \(recipe.cook_time) mins")
                    .font(.subheadline)
            }
            
        }
        .padding()
        .background(Color(red: 1.0, green: 0.95, blue: 0.98)) // rose très léger
        .cornerRadius(14)
        .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
    }
}

