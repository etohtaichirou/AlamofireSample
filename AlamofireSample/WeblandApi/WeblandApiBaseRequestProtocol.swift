//
//  BaseRequestProtocol.swift
//  AlamofireSample
//
//  Created by CTC Developer Team on 2019/03/14.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

import Foundation
import Alamofire


// MARK: - BaseRequestProtocol
protocol WeblandApiBaseRequestProtocol: WeblandApiBaseProtocol, URLRequestConvertible {
    var parameters: Parameters? { get }
    var encoding: URLEncoding { get }
}

extension WeblandApiBaseRequestProtocol {

    var encoding: URLEncoding {
        // parameter の変換の仕方を設定
        // defaultの場合、get→quertString、post→httpBodyとよしなに行ってくれる
        return URLEncoding.default
    }
    
    func asURLRequest() throws -> URLRequest {
        // requestごとの　pathを設定
        var urlRequest = URLRequest(url: baseURL.appendingPathComponent(path))
        
        // requestごとの　methodを設定(get/post/delete etc...)
        urlRequest.httpMethod = method.rawValue
        
        // headersを設定
        urlRequest.allHTTPHeaderFields = headers
        
        // timeout時間を設定
        urlRequest.timeoutInterval = TimeInterval(30)
        
        // requestごとの　parameterを設定
        if let params = parameters {
            urlRequest = try encoding.encode(urlRequest, with: params)
        }
        
        return urlRequest
    }
    
}
