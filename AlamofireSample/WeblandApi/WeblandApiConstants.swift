//
//  APIConstants.swift
//  AlamofireSample
//
//  Created by CTC Developer Team on 2019/03/14.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

//import Foundation
import Alamofire


// MARK: - Constants
// http://www.land.mlit.go.jp/webland/api.html#todofukenlist
enum WeblandApiConstants {
    //case signIn
    //case signUp
    case tradeListSearch    // 不動産取引価格情報取得API (information on real estate transaction prices API)
    case citySearch         // 都道府県内市区町村一覧取得API (municipal list API)

    // MARK: Public Variables
    public var path: String {
        switch self {
            //case .signIn: return "user_sign_in"
            //case .signUp: return "user_sign_up"
            case .tradeListSearch: return "TradeListSearch"
            case .citySearch: return "CitySearch"
        }
    }

    // MARK: Public Static Variables
    public static var baseURL = "http://www.land.mlit.go.jp/webland/api/"
    
    public static var header: HTTPHeaders? {
        // 必要ならば個々に設定してください
        return [
            "Accept-Encoding": "",
            "Accept-Language": "",
            "User-Agent": "",
            "Contenttype": "application/json",
            "Authorization": "Basic QWxhZGRpbjpPcGVuU2VzYW1l"
        ]
    }
    
}
