//
//  NetworkService.swift
//  MVC-N
//
//  Created by Даниил Сивожелезов on 28.05.2024.
//

import Foundation

class NetworkService {
    private init() {}
    static let shared = NetworkService()
    
    public func detData(url: URL, completion: @escaping (Any) -> Void) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async { completion(json) }
            } catch {
                print(error)
            }
        }.resume()
    }
}
