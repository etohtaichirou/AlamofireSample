//
//  SampleResponse.swift
//  AlamofireSample
//
//  Created by CTC Developer Team on 2019/03/14.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

import Alamofire


// サンプルレスポンス
//{
//    "status":"OK",
//      "data":[
//          {
//              "Type":"中古マンション等",
//              "MunicipalityCode":"13101",
//              "Prefecture":"東京都",
//              "Municipality":"千代田区",
//              "DistrictName":"飯田橋",
//              "TradePrice":"48000000",
//              "FloorPlan":"３ＤＫ",
//              "Area":"55",
//              "BuildingYear":"昭和60年",
//              "Structure":"ＳＲＣ",
//              "Use":"住宅",
//              "CityPlanning":"商業地域",
//              "CoverageRatio":"80",
//              "FloorAreaRatio":"600",
//              "Period":"2015年第１四半期",
//              "Renovation":"未改装"
//          },
//          {
//              "Type":"中古マンション等",
//              "MunicipalityCode":"13101",
//              "Prefecture":"東京都",
//              "Municipality":"千代田区",
//              "DistrictName":"飯田橋",
//              "TradePrice":"45000000",
//              "FloorPlan":"２ＤＫ",
//              "Area":"55",
//              "Structure":"ＳＲＣ",
//              "Use":"住宅",
//              "CityPlanning":"商業地域",
//              "CoverageRatio":"80",
//              "FloorAreaRatio":"600",
//              "Period":"2015年第１四半期",
//              "Renovation":"未改装"
//          },
//          {
//              "Type":"中古マンション等",
//              "MunicipalityCode":"13101",
//              "Prefecture":"東京都",
//              "Municipality":"千代田区",
//              "DistrictName":"飯田橋",
//              "TradePrice":"35000000",
//              "FloorPlan":"１ＬＤＫ",
//              "Area":"30",
//              "BuildingYear":"平成25年",
//              "Structure":"ＲＣ",
//              "Use":"住宅",
//              "Purpose":"住宅",
//              "CityPlanning":"商業地域",
//              "CoverageRatio":"80",
//              "FloorAreaRatio":"500",
//              "Period":"2015年第１四半期",
//              "Renovation":"未改装"
//          }
//    ]
//}

// MARK: - Response
struct TradeListResponse: Codable {
    let status: Bool?
    let data: [RealEstateTransaction]?

    // 特に型変換などがない場合は、init省略可なので省略
    private enum CodingKeys: String, CodingKey {
        case status = "status"
        case data = "data"
    }

}

// MARK: - Model
struct RealEstateTransaction: Codable {
    let type: String?
    let municipalityCode: String?
    let prefecture: String?
    let municipality: String?
    let districtName: String?
    let tradePrice: String?
    let floorPlan: String?
    let area: String?
    let buildingYear: String?
    let structure: String?
    let use: String?
    let purpose: String?
    let cityPlanning: String?
    let coverageRatio: String?
    let floorAreaRatio: String?
    let period: String?
    let renovation: String?

    private enum CodingKeys: String, CodingKey {
        case type = "Type"
        case municipalityCode = "MunicipalityCode"
        case prefecture = "Prefecture"
        case municipality = "Municipality"
        case districtName = "DistrictName"
        case tradePrice = "TradePrice"
        case floorPlan = "FloorPlan"
        case area = "Area"
        case buildingYear = "BuildingYear"
        case structure = "Structure"
        case use = "Use"
        case purpose = "Purpose"
        case cityPlanning = "CityPlanning"
        case coverageRatio = "CoverageRatio"
        case floorAreaRatio = "FloorAreaRatio"
        case period = "Period"
        case renovation = "Renovation"
    }

}
