//
//  MealsModelController.swift
//  Fetch Rewards
//
//  Created by Victor Huang on 4/20/24.
//

import Foundation

struct MealsModelController {
    private let mealsStorage: MealsStorage
    
    init(using mealsStorageMock: MealsStorage = TheMealDBNetworkEngine()){
        self.mealsStorage = mealsStorageMock
    }
    
    func getMeals(for category: MealCategory, completion: @escaping ([Meal]) -> Void ) {
        mealsStorage.getMeals(for: category) { meals in
            let filteredMeals = meals.filter{
                
                // Filter out any null or empty values
                !$0.name.isEmpty
            }
            .sorted {
                
                // Alphabetical sort
                $0.name.lowercased() < $1.name.lowercased()
            }
            completion(filteredMeals)
        }
    }
    
    func getMealDetail(for id: Int, completion: @escaping ((MealDetail) -> Void)) {
        mealsStorage.getMealDetails(for: id) { mealDetails in
            let filteredIngridients = mealDetails.ingredients.filter {
                
                // Filter out any null or empty values for ingredients entries
                !$0.name.isEmpty && !$0.quantity.isEmpty
            }
            let filteredMealDetails = MealDetail(
                name: mealDetails.name,
                instructions: mealDetails.instructions,
                ingredients: filteredIngridients)
            
           completion(filteredMealDetails)
        }
    }
}
