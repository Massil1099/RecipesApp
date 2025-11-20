//
//  RecipesRepository.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import Foundation

protocol RecipesRepository: ObservableObject {
    var recipes: [Recipe] { get }
}
