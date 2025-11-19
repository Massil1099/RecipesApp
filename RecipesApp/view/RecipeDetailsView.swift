//
//  RecipeDetailsView.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import Foundation

import SwiftUI

struct RecipeDetailsView: View {
    
    @State var recipe: Recipe
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .padding(.top)
                
                HStack(alignment: .top) {
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Prep Time : \(recipe.prep_time) mins")
                        Text("Cook Time : \(recipe.cook_time) mins")
                    }
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Button("Edit Recipe") {
                        
                    }
                    .font(.subheadline)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color.purple.opacity(0.10))
                    .cornerRadius(12)
                }
                
                
                // Serving + boutons
                HStack(spacing: 8) {
                    Text("Serving : \(recipe.serving)   ")
                    Button("-") { recipe.serving -= 1 }
                        .buttonStyle(.bordered)
                        .background(Color.purple.opacity(0.10))

                        .disabled(recipe.serving <= 0)
                    
                    Button("+") {
                        recipe.serving += 1
                    }
                    .buttonStyle(.bordered)
                    .background(Color.purple.opacity(0.10))
}
                
                
                
                // Image
                Image(recipe.imageName)
                    .resizable()
                    .scaledToFit()
                
                
                
                // Ingredients
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text("Ingredients")
                        .font(.title3)
                        .bold()
                    
                    VStack(alignment: .leading, spacing: 6) {
                        ForEach(recipe.ingredients) { ingredient in
                            Text("\(ingredient.name) \(formattedQuantity(ingredient))")
                                .font(.subheadline)
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Directions")
                        .font(.title3)
                        .bold()
                    
                    Text(recipe.directions)
                        .font(.body)
                        .foregroundColor(.gray)
                }
                
            }
            .padding()
        }
}
    
    
    // Format quantité dynamique
        private func formattedQuantity(_ ingredient: Ingredient) -> String {
            let q = ingredient.quantity

            // si entier : enlever .0
            if q == floor(q) {
                return "\(Int(q))\(ingredient.unit ?? "")"
            } else {
                return String(format: "%.1f%@", q, ingredient.unit ?? "")
            }
        }
}





#Preview {
    RecipeDetailsView(recipe: Injector.recipesRepository.recipes.first!)
}
