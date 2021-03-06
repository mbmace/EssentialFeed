//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Matthias Sehrbrock on 06.03.21.
//

import XCTest

class LocalFeedLoader {
    init(store: FeedStore) {
        
    }
}

class FeedStore {
    var deletedCachedFeedCount = 0
}

class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deletedCachedFeedCount, 0)
    }
    
}
