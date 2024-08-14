//
//  UIImage+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Amin faruq on 10/08/24.
//

import UIKit

extension UIImage {
    static func make(withColor color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        defer { UIGraphicsEndImageContext() }
        
        color.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))
        
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
