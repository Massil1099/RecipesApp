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
        VStack(alignment: .leading, spacing: 20) {
            
            Text(recipe.name)
                .font(.largeTitle)
                .bold()
                .padding(.top)
            
            VStack(alignment: .leading, spacing: 5){
                Text("Preparation Time: \(recipe.prep_time) mins")
                Text("Cooking Time: \(recipe.cook_time) mins")
            }
            
            HStack(spacing: 20) {
                Text("Serving: \(recipe.serving)")
                Button("-") {
                    recipe.serving -= 1
                }
                .buttonStyle(.bordered)
                .disabled(recipe.serving <= 0)
                
                Button("+") {
                    recipe.serving += 1
                }
                .buttonStyle(.bordered)
            }
            
            Image(recipe.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .cornerRadius(30)
            
            Text("Ingredients")
                .bold()
            
            VStack(alignment: .leading, spacing: 4){
                ForEach(recipe.ingredients, id: \.name) { ingredient in
                    Text("\(ingredient.quantity) \(ingredient.unit) \(ingredient.name)")
                }
            }
            
            Text("Directions")
                .bold()
            
            Text(recipe.directions)
        }
        .padding()
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
            directions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        )
        
        RecipeDetailsView(recipe: sampleRecipe)
    }
}
