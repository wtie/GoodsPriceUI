//
//  ViewController.swift
//  GoodsPriceUI
//
//  Created by wangtie on 2020/7/14.
//  Copyright © 2020 wangtie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let ui = GoodsPriceUI(frame: CGRect(x: 100, y: 100, width: 300, height: 80) )
        let oa = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12),
                  NSAttributedString.Key.strokeColor: UIColor.lightGray,
                  NSAttributedString.Key.strikethroughStyle: NSNumber(value: NSUnderlineStyle.single.rawValue)]
        let pa = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),
                  NSAttributedString.Key.foregroundColor: UIColor.red]
        var layout = GoodsPriceUIConfig(originalAttributes: oa, preferentialAttributes: pa)
        layout.preferentialImage = UIImage(named: "knowledge_market_vip")
        layout.unit = "¥"
        let ui = GoodsPriceUI(frame: CGRect(x: 100, y: 100, width: 300, height: 80), viewLayout: layout)
        self.view.addSubview(ui)
        ui.fillTexts(originalText: "500", preferentialText: "388")
    }


}

