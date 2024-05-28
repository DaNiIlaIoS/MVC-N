//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Даниил Сивожелезов on 28.05.2024.
//

import Foundation

class CommentNetworkService {
    private init() {}
    
    static func getComments(completion: @escaping (GetCommentResponse) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.detData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
