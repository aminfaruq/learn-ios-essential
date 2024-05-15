//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Amin Faruq on 05/05/24.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
