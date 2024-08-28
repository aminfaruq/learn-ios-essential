//
//  FeedImageCell+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Amin faruq on 23/08/24.
//

import UIKit
import EssentialFeed
import EssentialFeediOS

extension FeedImageCell {
    func simulateRetryAction() { feedImageRetryButton.simulateTap()}

    var isShowingLocation: Bool { !locationContainer.isHidden }
    
    var isShowingImageLoadingIndicator: Bool { feedImageContainer.isShimmering }
    
    var locationText: String? { locationLabel.text }
    
    var descriptionText: String? { descriptionLabel.text }
    
    var isShowingRetryAction: Bool { !feedImageRetryButton.isHidden }
    
    var renderedImage: Data? { feedImageView.image?.pngData() }
}
