//
//  FeedViewController.swift
//  EssentialFeediOS
//
//  Created by Amin faruq on 30/07/24.
//

import UIKit
import EssentialFeed

public final class FeedViewController: UITableViewController, UITableViewDataSourcePrefetching, FeedErrorView {
    
    private var refreshController: FeedRefreshViewController?
    public let errorView = ErrorView()
    var tableModel = [FeedImageCellController]() {
        didSet { tableView.reloadData() }
    }
    
    convenience init(refreshController: FeedRefreshViewController) {
        self.init()
        self.refreshController = refreshController
    }
    
    private func registerTableView() {
        errorView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        tableView.tableHeaderView = errorView
        tableView.register(FeedImageCell.self, forCellReuseIdentifier: "FeedImageCell")
        tableView.tableHeaderView?.contentMode = .scaleToFill
        tableView.dataSource = self
        tableView.delegate = self
        tableView.prefetchDataSource = self
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        registerTableView()
        refreshControl = refreshController?.view
        refreshController?.refresh()
    }
    
    public func display(_ viewModel: FeedErrorViewModel) {
        errorView.message = viewModel.message
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableModel.count
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellController(forRowAt: indexPath).view(in: tableView)
    }
    
    public override func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cancelCellControllerLoad(forRowAt: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath]) {
        indexPaths.forEach { indexPath in
            cellController(forRowAt: indexPath).preload()
        }
    }
    
    public func tableView(_ tableView: UITableView, cancelPrefetchingForRowsAt indexPaths: [IndexPath]) {
        indexPaths.forEach(cancelCellControllerLoad)
    }
    
    private func cellController(forRowAt indexPath: IndexPath) -> FeedImageCellController {
        return tableModel[indexPath.row]
    }
    
    private func cancelCellControllerLoad(forRowAt indexPath: IndexPath) {
        cellController(forRowAt: indexPath).cancelLoad()
    }
}
