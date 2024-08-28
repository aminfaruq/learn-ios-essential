//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Amin faruq on 15/08/24.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
