//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Matthias Sehrbrock on 07.01.22.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
