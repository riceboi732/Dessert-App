//
//  ImageLoading.swift
//  Fetch Rewards
//
//  Created by Victor Huang on 4/20/24.
//

import UIKit

fileprivate let imageCache = NSCache<NSString, UIImage>()

struct ImageLoader {
    
    static func loadImage(from urlString: String, completion: @escaping ((UIImage) -> Void)){
        
        // Checker for exisiting img in cache
        let key = NSString(string: urlString)
        if let cachedImage = imageCache.object(forKey: key) {
            completion(cachedImage)
            return
        }
        
        // If image does not exisit create URl request
        let url = URL(string: urlString)!
        URLSession.shared.dataTask(with: url) { data, _, _ in
            if let data = data,
               let downloadedImage = UIImage(data: data)  {
                imageCache.setObject(downloadedImage,
                                     forKey:
                                        NSString(string: urlString))
                completion(downloadedImage)
            }
        }.resume()
    }
}
