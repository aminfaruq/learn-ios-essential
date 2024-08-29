//
//  HTTPURLResponse+StatusCode .swift
//  EssentialFeed
//
//  Created by Amin faruq on 29/08/24.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }
    
    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}