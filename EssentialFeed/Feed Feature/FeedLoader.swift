//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Matthias Sehrbrock on 06.02.21.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
