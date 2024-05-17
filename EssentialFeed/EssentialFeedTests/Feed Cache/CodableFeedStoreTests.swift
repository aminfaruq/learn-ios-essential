//
//  CodableFeedStoreTests.swift
//  EssentialFeedTests
//
//  Created by Phincon on 17/05/24.
//

import XCTest
import EssentialFeed

class CodableFeedStore {
    func retrive(completion: @escaping FeedStore.RetrievalCompletion) {
        completion(.empty)
    }
}

final class CodableFeedStoreTests: XCTestCase {
    
    func test_retrive_deliversEmptyOnEmptyCache() {
        let sut = CodableFeedStore()
        let exp = expectation(description: "Wait for cache retrive")
        
        sut.retrive { result in
            switch result {
            case .empty: break
                
            default:
                XCTFail("Expected empty result, got \(result) instead")
            }
            
            exp.fulfill()
        }
        wait(for: [exp], timeout: 1.0)
    }
}
