//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Matthias Sehrbrock on 06.02.21.
//

import Foundation

struct FeedItem {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
