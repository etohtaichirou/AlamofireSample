//
//  SampleRequest.swift
//  AlamofireSample
//
//  Created by CTC Developer Team on 2019/03/14.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

import Alamofire

//
// http://www.land.mlit.go.jp/webland/api/TradeListSearch?from=20151&to=20151&area=13&city=13101
//

// MARK: - Request
enum TradeListRequest: WeblandApiBaseRequestProtocol {
    typealias ResponseType = TradeListResponse
//    case get(
//        _ type: String?,                   // 取引の種類
//        _ region: String?,                 // 地区
//        _ municipalityCode: String?,       // 市区町村コード
//        _ prefecture: String?,             // 都道府県名
//        _ municipality: String?,           // 市区町村名
//        _ districtName: String?,           // 地区名
//        _ nearestStation: String?,         // 最寄駅：名称
//        _ timeToNearestStation: String?,   // 最寄駅：距離（分）
//        _ tradePrice: String?,             // 取引価格（総額）
//        _ pricePerUnit: String?,           // 坪単価(only japanese)
//        _ floorPlan: String?,              // 間取り
//        _ area: String?,                   // 面積（平方メートル）
//        _ unitPrice: String?,              // 取引価格（平方メートル単価）
//        _ landShape: String?,              // 土地の形状
//        _ frontage: String?,               // 間口
//        _ totalFloorArea: String?,         // 延床面積(平方メートル)
//        _ buildingYear: String?,           // 建築年
//        _ structure: String?,              // 建物の構造
//        _ use: String?,                    // 用途
//        _ purpose: String?,                // 今後の利用目的
//        _ direction: String?,              // 前面道路：方位
//        _ classification: String?,         // 前面道路：種類
//        _ breadth: String?,                // 前面道路：幅員（ｍ）
//        _ cityPlanning: String?,           // 都市計画
//        _ coverageRatio: String?,          // 建ぺい率（％）
//        _ floorAreaRatio: String?,         // 容積率（％）
//        _ period: String?,                 // 取引時点
//        _ renovation: String?,             // 改装
//        _ remarks: String?                 // 取引の事情等
//    )
    case get(
        from: String?,                  // 取引時期From
        to: String?,                    // 取引時期To
        area: String?,                  // 都道府県コード
        city: String?,                  // 市区町村コード
        station: String?                // 駅コード
    )
    //case get(keyword: String, ids: [Int])

    var method: HTTPMethod {
        switch self {
            case .get: return .get
        }
    }

    var path: String {
        return WeblandApiConstants.tradeListSearch.path
    }

    var parameters: Parameters? {
        switch self {
            case .get:
                return [
                    "from": "20151",
                    "to": "20151",
                    "area": "13",
                    "city": "13101"
                ]
        }
    }

}
