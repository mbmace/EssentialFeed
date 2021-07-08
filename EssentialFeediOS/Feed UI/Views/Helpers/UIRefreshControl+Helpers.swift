//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Matthias Sehrbrock on 08.07.21.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
