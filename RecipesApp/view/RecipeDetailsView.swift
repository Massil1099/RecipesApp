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
                        .disabled(recipe.serving <= 0)
                    
                    Button("+") {
                        recipe.serving += 1
                    }
                    .buttonStyle(.bordered) }
                
                
                // Image
                Image(recipe.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 250)
                
                
                
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
            var q = ingredient.quantity

            // si entier : enlever .0
            if q == floor(q) {
                return "\(Int(q))\(ingredient.unit ?? "")"
            } else {
                return String(format: "%.1f%@", q, ingredient.unit ?? "")
            }
        }
}




// Preview ne voulait pas fonctionner dans cette view j'ai use l'ancienne methode ici juste pour la visualisation canvas

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleRecipe = Recipe(
            name: "Clafoutis",
            prep_time: 15,
            cook_time: 35,
            serving: 8,
            baseServing: 8,
            imageName: "clafoutis",
            ingredients: [
                Ingredient(name: "poires (pear)", quantity: 6, unit: "pcs"),
                Ingredient(name: "sucre (sugar)", quantity: 180, unit: "g")
            ],
            directions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit."
        )
        
        RecipeDetailsView(recipe: sampleRecipe)
    }
}
