//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Amin faruq on 15/08/24.
//

import Foundation

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}