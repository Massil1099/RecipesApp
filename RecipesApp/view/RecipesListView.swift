//
//  RecipesListView.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import Foundation
import SwiftUI


struct RecipesListView: View {
    
    @StateObject var repository = Injector.recipesRepository //le repository devient un @StateObjectt
    
    var body: some View {
        VStack {
            
            //Text("Recipes")
            //    .font(.largeTitle)
            //    .bold()
            //    .padding(.horizontal)
            //    .padding(.top)
                
            List($repository.recipes){$recipe in
                NavigationLink(destination: RecipeDetailsView(recipe: $recipe)){
                    RecipeView(recipe: recipe)
                }
                    .listRowSeparator(.hidden)   // Enlève les lignes séparatrices

            }
            .listStyle(.plain)
        }
        .navigationTitle("Recipes")
    }
}

#Preview { 
    RecipesListView()
}
