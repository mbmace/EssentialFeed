//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Matthias Sehrbrock on 11.03.21.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
