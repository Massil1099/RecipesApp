//
//  RecipeDetailsView.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import Foundation

import SwiftUI
import PhotosUI

struct RecipeDetailsView: View {
        
    @Binding var recipe: Recipe
    
    //selectedImage permet de gerer la selection d'une image depuis la photothèque
    @State private var selectedImage: PhotosPickerItem? = nil //nil = pas de valeur en swift
    
    //selectedImageDatade permet de stocker les données de l'image sélectionnée pour l'affichage dynamique
    @State private var selectedImageData: Data? = nil

    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                //Text(recipe.name)
                  //  .font(.largeTitle)
                  //  .bold()
                  //  .padding(.top)
                
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
                PhotosPicker(
                    selection: $selectedImage, //lie la selection a notre state
                    matching: .images, //on ne permet que les images
                    photoLibrary: .shared() //acces a la photothèque partagé
                ) {
                    VStack {
                        if let data = recipe.customImageData,
                           let uiImage = UIImage(data: data) {
                            // Affiche l'image sélectionnée par l'utilisateur
                            Image(uiImage: uiImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350, height: 250)
                                .cornerRadius(12)
                            // Sinon affiche l'image par défaut de la recette

                        } else {
                            Image(recipe.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350, height: 250)
                                .cornerRadius(12)
                        }
                    }
                }
                .onChange(of: selectedImage) { oldValue, newValue in
                    Task {
                        if let data = try? await newValue?.loadTransferable(type: Data.self) {
                            // On stocke les données de l'image sélectionnée pour l'affichage

                            selectedImageData = data
                            recipe.customImageData = data //on sauvegarde l'image dans le modèle
                        }
                    }
                }
                
                
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
            .navigationTitle(recipe.name)

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


