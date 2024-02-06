//
//  RemoteFeedLoader.swift
//  EssentialFeedTests
//
//  Created by Amin faruq on 06/02/24.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    
    private init() {}
    
    var requestedURL: URL?
}

final class RemoteFeedLoaderTest: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        //Arrage
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        //Act
        sut.load()
        
        //Assert
        XCTAssertNotNil(client.requestedURL)
    }
    
}
