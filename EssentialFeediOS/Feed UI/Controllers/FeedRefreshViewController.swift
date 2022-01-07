//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Matthias Sehrbrock on 03.06.21.
//

import UIKit
import EssentialFeed

public protocol FeedRefreshViewControllerDelegate {
     func didRequestFeedRefresh()
}

public final class FeedRefreshViewController: NSObject, FeedLoadingView {
    @IBOutlet private var view: UIRefreshControl?
    
    public var delegate: FeedRefreshViewControllerDelegate?
    
    @IBAction func refresh() {
        delegate?.didRequestFeedRefresh()
    }
    
    public func display(_ viewModel: FeedLoadingViewModel) {
        view?.update(isRefreshing: viewModel.isLoading)
    }
}
