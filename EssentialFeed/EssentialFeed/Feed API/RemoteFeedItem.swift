//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Amin Faruq on 05/05/24.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
