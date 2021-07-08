//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Matthias Sehrbrock on 03.06.21.
//

import UIKit
import EssentialFeed

protocol FeedRefreshViewControllerDelegate {
     func didRequestFeedRefresh()
}

final class FeedRefreshViewController: NSObject, FeedLoadingView {
    @IBOutlet private var view: UIRefreshControl?
    
    var delegate: FeedRefreshViewControllerDelegate?
    
    @IBAction func refresh() {
        delegate?.didRequestFeedRefresh()
    }
    
    func display(_ viewModel: FeedLoadingViewModel) {
        view?.update(isRefreshing: viewModel.isLoading)
    }
}
