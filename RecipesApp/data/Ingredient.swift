//
//  Ingredient.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    var name: String
    var quantity: Double    // quantité (relative au serving de base)
    var unit: String?       // exemples "g", "cl", "pcs" ou nil
    
    
    // Calcule la quantité ajustée en fonction du serving actuel et du baseServing
    func adjustedQuantity(for serving: Int, baseServing: Int) -> Double {
        return quantity * Double(serving) / Double(baseServing)
    }
}

