//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Matthias Sehrbrock on 06.02.21.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
