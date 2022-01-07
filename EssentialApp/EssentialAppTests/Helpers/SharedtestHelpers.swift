//
//  SharedtestHelpers.swift
//  EssentialAppTests
//
//  Created by Matthias Sehrbrock on 07.01.22.
//

import Foundation
import EssentialFeed

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}

func uniqueFeed() -> [FeedImage] {
     return [FeedImage(id: UUID(), description: "any", location: "any", url: anyURL())]
 }
