//
//  RecipeEditView.swift
//  RecipesApp
//
//  Created by Massil ait challal on 21/11/2025.
//

import Foundation
import SwiftUI

struct RecipeEditView: View {
    
    @Binding var recipe: Recipe
    @State private var sortByName = false

    
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading, spacing: 10) {
                
                EditableFieldView(title: "Prep Time (mins)", value: $recipe.prep_time)
                EditableFieldView(title: "Cook Time (mins)", value: $recipe.cook_time)
                EditableFieldView(title: "Serving", value: $recipe.serving)
                
                
                HStack(alignment: .top) {
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Ingredients")
                    }
                    .font(.headline)

                    
                    Spacer()
                    
                    Toggle("Sort by name", isOn: $sortByName)
                            .labelsHidden()
                     }
                

                
                
            }
            .navigationTitle(recipe.name)
            
            .padding()
            
        }
    }
    
        
}
