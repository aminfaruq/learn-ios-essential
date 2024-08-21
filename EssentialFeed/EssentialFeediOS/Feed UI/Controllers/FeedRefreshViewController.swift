//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Amin faruq on 14/08/24.
//

import UIKit

final class FeedRefreshViewController: NSObject, FeedLoadingView {
    private(set) lazy var view = loadView()
    
    private let loadFeed: () -> Void
        
    init(loadFeed: @escaping () -> Void) {
        self.loadFeed = loadFeed
    }
    
    @objc func refresh() {
        loadFeed()
    }
    
    func display(_ viewModel: FeedLoadingViewModel) {
        viewModel.isLoading ? view.beginRefreshing() : view.endRefreshing()
    }
    
    private func loadView() -> UIRefreshControl {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
