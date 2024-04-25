//
//  TheMealDBNetworkResponse.swift
//  Fetch Rewards
//
//  Created by Victor Huang on 4/20/24.
//

import Foundation

struct TheMealDBNetworkResponse<T:Codable>: Codable {
    var meals: T
}
