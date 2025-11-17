//
//  RecipesRepositoryDummyImpl.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import Foundation

class RecipesRepositoryDummyImpl: RecipesRepository {
    private(set) var recipes = [
        Recipe(name : "Simple cake", prep_time: 10, cook_time: 30, serving: 12, imageName: "simple_cake"),
        Recipe(name : "Chocolate cake", prep_time: 15, cook_time: 25, serving: 8, imageName: "chocolate_cake"),
        Recipe(name : "Clafoutis", prep_time: 15, cook_time: 35, serving: 8, imageName: "clafoutis"),
] }
