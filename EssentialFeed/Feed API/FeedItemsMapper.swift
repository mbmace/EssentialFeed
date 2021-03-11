//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Matthias Sehrbrock on 12.02.21.
//

import Foundation

final class FeedItemsMapper {
    
    private struct Root: Decodable {
        let items: [RemoteFeedImage]
    }
    
    private static let OK_200 = 200
    
    static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedImage] {
        guard response.statusCode == OK_200,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }
        return root.items
    }
}
