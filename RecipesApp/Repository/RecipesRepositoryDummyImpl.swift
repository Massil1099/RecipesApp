//
//  RecipesRepositoryDummyImpl.swift
//  RecipesApp
//
//  Created by Massil ait challal on 17/11/2025.
//

import Foundation

class RecipesRepositoryDummyImpl: RecipesRepository {
    @Published var recipes: [Recipe] = [
        Recipe(name : "Simple cake",
               prep_time: 10,
               cook_time: 30,
               serving: 12,
               baseServing: 12,
               imageName: "simple_cake",
               ingredients: [
                    Ingredient(name: "sucre (sugar)", quantity: 200, unit: "g"),
                    Ingredient(name: "beurre (butter)", quantity: 125, unit: "g"),
                    Ingredient(name: "œufs (eggs)", quantity: 2, unit: "pcs"),
                    Ingredient(name: "farine (flour)", quantity: 200, unit: "g"),
                    Ingredient(name: "levure (baking powder)", quantity: 10, unit: "g"),
                    Ingredient(name: "lait (milk)", quantity: 12.5, unit: "cl")
               ],
               directions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit. "
              ),
        
        
        Recipe(name : "Chocolate cake",
               prep_time: 15,
               cook_time: 25,
               serving: 8,
               baseServing: 8,
               imageName: "chocolate_cake",
               ingredients: [
                    Ingredient(name: "chocolat (chocolate)", quantity: 200, unit: "g"),
                    Ingredient(name: "sucre (sugar)", quantity: 200, unit: "g"),
                    Ingredient(name: "beurre (butter)", quantity: 125, unit: "g"),
                    Ingredient(name: "œufs (eggs)", quantity: 4, unit: "pcs"),
                    Ingredient(name: "farine (flour)", quantity: 125, unit: "g"),
                    Ingredient(name: "levure (baking powder)", quantity: 5, unit: "g")
                ],
                directions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit. "
                ),
        
        
        
        Recipe(name : "Clafoutis", 
               prep_time: 15,
               cook_time: 35,
               serving: 8,
               baseServing: 8,
               imageName: "clafoutis",
               ingredients: [
                    Ingredient(name: "poires (pear)", quantity: 6, unit: "pcs"),
                    Ingredient(name: "sucre (sugar)", quantity: 180, unit: "g"),
                    Ingredient(name: "œufs (eggs)", quantity: 6, unit: "pcs"),
                    Ingredient(name: "farine (flour)", quantity: 125, unit: "g"),
                    Ingredient(name: "crème fraîche liquide (liquid cream)", quantity: 50, unit: "cl"),
                    Ingredient(name: "lait (milk)", quantity: 25, unit: "cl"),
                    Ingredient(name: "beurre (butter)", quantity: 10, unit: "g")
                ],
                    directions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit. "
                )
] }
