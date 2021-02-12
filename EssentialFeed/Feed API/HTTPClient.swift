//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Matthias Sehrbrock on 12.02.21.
//

import Foundation

public enum HTTPClientResult {
    case succes(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
