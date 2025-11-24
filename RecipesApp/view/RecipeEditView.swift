//
//  RecipeEditView.swift
//  RecipesApp
//
//  Created by Massil ait challal on 21/11/2025.
//

import Foundation
import SwiftUI

import SwiftUI

struct RecipeEditView: View {
    
    @Binding var recipe: Recipe
    @State private var sortByName = false
    
    // on retourne les indices triés selon le bouton toggle
    var sortedIndices: [Int] {
        if sortByName {
            return recipe.ingredients.indices.sorted { recipe.ingredients[$0].name < recipe.ingredients[$1].name }
        } else {
            return Array(recipe.ingredients.indices)
        }
    }
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                EditableFieldView(title: "Prep Time (mins)", value: $recipe.prep_time)
                EditableFieldView(title: "Cook Time (mins)", value: $recipe.cook_time)
                EditableFieldView(title: "Serving", value: $recipe.serving)
                
                
                HStack {
                    Text("Ingredients")
                        .font(.title3).bold()
                    
                    Spacer()
                    
                    Toggle("Sort by name", isOn: $sortByName)
                    
                }
                
                
                // la liste des ingredients
                VStack(spacing: 12) {
                    ForEach(sortedIndices, id: \.self) { index in
                        HStack {
                            
                            VStack(alignment: .leading) {
                                Text("\(recipe.ingredients[index].name) (\(recipe.ingredients[index].unit ?? ""))")
                                    .font(.subheadline)
                                
                                TextField(
                                    "Quantity",
                                    value: $recipe.ingredients[index].quantity,
                                    formatter: NumberFormatter()
                                )
                                .keyboardType(.decimalPad)
                                .textFieldStyle(.roundedBorder)
                            }
                            
                            Spacer()
                            
                            Button {
                                deleteIngredient(at:index)
                            } label: {
                                Image(systemName: "trash")
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(Color.red)
                                    .clipShape(Circle())
                            
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle(recipe.name)
        }
        
        
        
    }
    
    private func deleteIngredient(at index: Int) {
        recipe.ingredients.remove(at: index)
    }
}

