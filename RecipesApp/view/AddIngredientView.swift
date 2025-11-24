//
//  AddIngredientView.swift
//  RecipesApp
//
//  Created by Massil ait challal on 24/11/2025.
//

import Foundation

import SwiftUI

struct AddIngredientView: View {
    
    @Binding var recipe: Recipe
    
    @State private var name = ""
    @State private var quantity = ""
    @State private var unit = ""
    
    @Environment(\.dismiss) private var dismiss //pour retourner automatiquement a lecran precedent apres l'ajout de lingredient
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Ingredient Info")
                    .font(.headline)
                    .padding(.top)
                
                VStack(spacing: 15) {
                    TextField("Name", text: $name)
                        .textFieldStyle(.roundedBorder)
                    
                    TextField("Quantity", text: $quantity)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                    
                    TextField("Unit (g, ml, cl...)", text: $unit)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                .background(Color.purple.opacity(0.10))
                .cornerRadius(12)
                
                Button(action: addIngredient) {
                    Text("Add Ingredient")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(name.isEmpty || Double(quantity) == nil ? Color.gray.opacity(0.3) : Color.purple.opacity(0.50))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(name.isEmpty || Double(quantity) == nil)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("New Ingredient")
    }
    
    
    private func addIngredient() {
        guard let q = Double(quantity) else { return }
        
        let newIng = Ingredient(
            name: name,
            quantity: q,
            unit: unit.isEmpty ? nil : unit
        )
        
        recipe.ingredients.append(newIng)
        dismiss()
    }
}
