//
//  Meal.swift
//  Fetch Rewards
//
//  Created by Victor Huang on 4/20/24.
//

import Foundation

struct MealNetworkResponse: Codable {
    let name: String
    let id: String
    let imageURL: String
    
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case id = "idMeal"
        case imageURL = "strMealThumb"
    }
}
