//
//  BaseAPIProtocol.swift
//  AlamofireSample
//
//  Created by CTC Developer Team on 2019/03/14.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

import Alamofire


// MARK: - Base API Protocol
protocol WeblandApiBaseProtocol {
    associatedtype ResponseType // レスポンスの型

    var method: HTTPMethod { get } // get,post,delete などなど
    var baseURL: URL { get } // APIの共通呼び出し元。 ex "https://~~~"
    var path: String { get } // リクエストごとのパス
    var headers: HTTPHeaders? { get } // ヘッダー情報
    
}


extension WeblandApiBaseProtocol {
    
    var baseURL: URL { // 先ほど上で定義したもの。
        // 絶対にあることがある保証されているので「try！」を使用している
        return try! WeblandApiConstants.baseURL.asURL()
    }
    
    var headers: HTTPHeaders? { // 先ほど上で定義したもの。なければ「return nil」でok
        return WeblandApiConstants.header
    }
    
}
