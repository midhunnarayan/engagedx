//  ViewController.swift
//  eMerchant
//
//  Created by Midhun on 28/01/20.
//  Copyright © 2020 Midhun. All rights reserved.
//

import Foundation
import UIKit
enum APIRouter {
    
    case getUser
    // MARK: - HTTPMethod
    private enum HTTPMethod {
        case get
        case post
        case put
        case delete
        var value: String{
            switch self {
            case .get:return "GET"
            case .post: return "POST"
            case .put: return "PUT"
            case .delete: return "DELETE"
            }
        }
    }
    private var method: HTTPMethod {
        switch self {
        case .getUser:
            return .get
        }
    }
    
    // MARK: - Path
    private var path: String {
        switch self {
        case .getUser:
            return "userprofile/getuserdetails"
        }
    }
    
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        
        let urlString = "\(K.ProductionServer.baseURL)\(path)"
        
        guard let url = URL(string: urlString) else {
            throw ErrorResult.parseUrlFail
        }
        
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 10)
        request.httpMethod = method.value
        request.addValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        return request
    }
    
}
