//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Amin faruq on 06/02/24.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
