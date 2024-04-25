//
//  NetworkModel.swift
//  Fetch Rewards
//
//  Created by Victor Huang on 4/20/24.
//

import Foundation

struct NetworkModel {
    
    var session: URLSession
    
    init(with session: URLSession = URLSession.shared){
        self.session = session
    }
    
    func makeRequest<T:Codable>(at url: URL, completion: @escaping ((T?, Error?) -> Void)){
        let task = session.dataTask(with: url) { data, response, error in
            let responseObject = try? JSONDecoder().decode(T.self, from: data!)
            completion(responseObject, nil)
        }
        task.resume()
    }
    
    func getURL(for endpoint: EndPoint) -> URL? {
        var urlComponent = URLComponents()
        urlComponent.host = endpoint.host
        urlComponent.scheme = endpoint.scheme
        urlComponent.path = endpoint.path
        urlComponent.queryItems = endpoint.queryItems
        return urlComponent.url
    }
}
