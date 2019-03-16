//
//  APIResult.swift
//  AlamofireSample
//
//  Created by CTC Developer Team on 2019/03/14.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

import Foundation


// MARK: - ResultType
enum WeblandApiResult {
    case success(Codable)
    case failure(Error)
}

// MARK: - ErrorResponse
// 自分でデコードのエラーだとわかるならなんでもいいです。
struct WeblandApiErrorResponse: Error, CustomStringConvertible {
    let description: String = "-- Decode Error --"
    var dataContents: String?
}


// MARK: - JSONDecoder Extension
extension JSONDecoder {

    convenience init(type: JSONDecoder.KeyDecodingStrategy) {
        self.init()
        self.keyDecodingStrategy = type
    }

}
