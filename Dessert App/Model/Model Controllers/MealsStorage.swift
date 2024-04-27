//
//  MealsStorage.swift
//  Fetch Rewards
//
//  Created by Victor Huang on 4/20/24.
//

import Foundation

// Template for creating MealsModelController
protocol MealsStorage {
    func getMeals(for category: MealCategory, completion: @escaping (([Meal]) -> Void))
    func getMealDetails(for id: Int, completion: @escaping ((MealDetail) -> Void))
}
