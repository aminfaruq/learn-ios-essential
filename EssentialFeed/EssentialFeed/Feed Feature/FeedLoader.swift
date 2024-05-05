//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Amin faruq on 06/02/24.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
