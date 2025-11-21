//
//  EditableFieldView.swift
//  RecipesApp
//
//  Created by Massil ait challal on 21/11/2025.
//

import Foundation
import SwiftUI

// EditableFieldView c'est une vue qui presente les champs texte dans RecipeEditview

struct EditableFieldView: View {
    let title: String
    @Binding var value: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text(title).font(.caption)

            TextField(title, value: $value, formatter: NumberFormatter())
                .keyboardType(.numberPad)
                .padding()
                .background(Color(red: 1.0, green: 0.95, blue: 0.98))
                .cornerRadius(10)
        }
    }
}


