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
        addOrigianlTopUI()
        addOriginalRightUI()
        addOrigianlBottomUI()
    }

    func addOriginalRightUI() {
        let oa = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12),
                  NSAttributedString.Key.strokeColor: UIColor.lightGray,
                  NSAttributedString.Key.strikethroughStyle: NSNumber(value: NSUnderlineStyle.single.rawValue)]
        let pa = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),
                  NSAttributedString.Key.foregroundColor: UIColor.red]
        var layout = GoodsPriceUIConfig(originalAttributes: oa, preferentialAttributes: pa)
        layout.preferentialImage = UIImage(named: "knowledge_market_vip")
        layout.unit = "¥"
        let ui = GoodsPriceUI(frame: CGRect(x: 50, y: 100, width: 100, height: 60), viewLayout: layout)
        self.view.addSubview(ui)
        ui.fillTexts(originalText: "500", preferentialText: "388")
    }
    
    func addOrigianlTopUI() {
        let oa = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12),
                  NSAttributedString.Key.strokeColor: UIColor.lightGray,
                  NSAttributedString.Key.strikethroughStyle: NSNumber(value: NSUnderlineStyle.single.rawValue)]
        let pa = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),
                  NSAttributedString.Key.foregroundColor: UIColor.red]
        var layout = GoodsPriceUIConfig(originalAttributes: oa, preferentialAttributes: pa)
        layout.unit = "币"
        layout.layoutType = .layoutOriginalTop
        let ui = GoodsPriceUI(frame: CGRect(x: 50, y: 180, width: 100, height: 45), viewLayout: layout)
        self.view.addSubview(ui)
        ui.fillTexts(originalText: "500", preferentialText: "388")
    }
    
    func addOrigianlBottomUI() {
        let oa = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12),
                  NSAttributedString.Key.strokeColor: UIColor.lightGray,
                  NSAttributedString.Key.strikethroughStyle: NSNumber(value: NSUnderlineStyle.single.rawValue)]
        let pa = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),
                  NSAttributedString.Key.foregroundColor: UIColor.red]
        var layout = GoodsPriceUIConfig(originalAttributes: oa, preferentialAttributes: pa)
        layout.preferentialImage = UIImage(named: "knowledge_market_vip")
        layout.unit = "¥"
        layout.layoutType = .layoutOriginalBottom
        let ui = GoodsPriceUI(frame: CGRect(x: 50, y: 260, width: 100, height: 45), viewLayout: layout)
        self.view.addSubview(ui)
        ui.fillTexts(originalText: "500", preferentialText: "388")
    }

}

