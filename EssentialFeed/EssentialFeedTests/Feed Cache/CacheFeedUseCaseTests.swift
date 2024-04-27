//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Amin faruq on 27/04/24.
//

import XCTest

class LocaFeedLoader {
    init(store: FeedStore) {
        
    }
}

class FeedStore {
    var deleteCacheFeedCallCount = 0
}

final class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDelegateCacheUponCreation() {
        let store = FeedStore()
        _ = LocaFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCacheFeedCallCount, 0)
    }
}
