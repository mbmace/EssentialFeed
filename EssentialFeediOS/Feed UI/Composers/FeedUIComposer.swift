//
//  FeedUIComposer.swift
//  EssentialFeediOS
//
//  Created by Matthias Sehrbrock on 03.06.21.
//

import UIKit
import EssentialFeed

public final class FeedUIComposer {
    private init() {}
    
    public static func feedComposedWith(feedLoader: FeedLoader, imageLoader: FeedImageDataLoader) -> FeedViewController {
        let presentationAdapter = FeedLoaderPresentationAdapter(
            feedLoader: MainQueueDispatchDecorator(decoratee: feedLoader))
        
        let feedController = FeedViewController.makeWith(title: FeedPresenter.title)
        let refreshController = feedController.refreshController!
        refreshController.delegate = presentationAdapter
        
        presentationAdapter.presenter = FeedPresenter(
            feedView: FeedViewAdapter(
                controller: feedController,
                imageLoader: MainQueueDispatchDecorator(decoratee: imageLoader)),
            loadingView: WeakRefVirtualProxy(refreshController))
        
        return feedController
    }
}

private extension FeedViewController {
    static func makeWith(title: String) -> FeedViewController {
        let bundle = Bundle(for: FeedViewController.self)
        let storyboard = UIStoryboard(name: "Feed", bundle: bundle)
        let feedController = storyboard.instantiateInitialViewController() as! FeedViewController
        feedController.title = title
        return feedController
    }
}
