//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Matthias Sehrbrock on 06.02.21.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
