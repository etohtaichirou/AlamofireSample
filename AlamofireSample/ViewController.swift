//
//  ViewController.swift
//  AlamofireSample
//
//  Created by CTC Developer Team on 2019/03/14.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

import UIKit
import RxSwift


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let disposeBag = DisposeBag()
        WeblandApiManager.call(
            TradeListRequest.get(
                from: "20151",              // 取引時期From
                to: "20151",                // 取引時期To
                area: "13",                 // 都道府県コード
                city: "13101",              // 市区町村コード
                station: nil                // 駅コード
            ),
            disposeBag,
            onSuccess: {_ in
            // do some thing

        }, onError: {_ in
            // error handling

        })

    }

}
