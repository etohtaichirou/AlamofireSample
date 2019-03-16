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

    case get(
        type: String,                   // 取引の種類
        region: String,                 // 地区
        municipalityCode: String,       // 市区町村コード
        prefecture: String,             // 都道府県名
        municipality: String,           // 市区町村名
        districtName: String,           // 地区名
        nearestStation: String,         // 最寄駅：名称
        timeToNearestStation: String,   // 最寄駅：距離（分）
        tradePrice: String,             // 取引価格（総額）
        pricePerUnit: String,           // 坪単価(only japanese)
        floorPlan: String,              // 間取り
        area: String,                   // 面積（平方メートル）
        unitPrice: String,              // 取引価格（平方メートル単価）
        landShape: String,              // 土地の形状
        frontage: String,               // 間口
        totalFloorArea: String,         // 延床面積(平方メートル)
        buildingYear: String,           // 建築年
        structure: String,              // 建物の構造
        use: String,                    // 用途
        purpose: String,                // 今後の利用目的
        direction: String,              // 前面道路：方位
        classification: String,         // 前面道路：種類
        breadth: String,                // 前面道路：幅員（ｍ）
        cityPlanning: String,           // 都市計画
        coverageRatio: String,          // 建ぺい率（％）
        floorAreaRatio: String,         // 容積率（％）
        period: String,                 // 取引時点
        renovation: String,             // 改装
        remarks: String                 // 取引の事情等
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
