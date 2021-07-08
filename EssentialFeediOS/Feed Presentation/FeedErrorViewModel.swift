//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Matthias Sehrbrock on 08.07.21.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
