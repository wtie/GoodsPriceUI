//
//  GoodsPriceUI.swift
//  GoodsPriceUI
//
//  Created by wangtie on 2020/7/14.
//  Copyright © 2020 wangtie. All rights reserved.
//

import UIKit
import SnapKit

/// 商品价格UI
/*
 
 A: 优惠价格 原价-
 B: 优惠价格
    原价-
 C: 优惠价格
 D: 原价-
    🌅优惠价格
 E: 原价-
    优惠价格
 
 */
class GoodsPriceUI: UIView {
    
    let iconView = UIImageView()
    let originalLabel = UILabel()
    let preferentialLabel = UILabel()
    let stackView = UIStackView()
    var layout: GoodsPriceUIConfig?
    
    public init(frame: CGRect, viewLayout layout: GoodsPriceUIConfig) {
        super.init(frame: frame)
        self.layout = layout
        self.initSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func initSubviews() {
        guard let layout = self.layout else { fatalError("需要初始化 layout 对象")}
        stackView.alignment = .bottom
        stackView.spacing = 3
        stackView.distribution = .fill
        addSubview(stackView)
        stackView.addArrangedSubview(originalLabel)
        stackView.addArrangedSubview(preferentialLabel)
        let layoutType = layout.layoutType
        switch layoutType {
        case .layoutOriginalRight:
            stackView.axis = .horizontal
        case .layoutOriginalTop,.layoutOriginalBottom:
            stackView.axis = .vertical
        default:
            stackView.axis = .horizontal
        }
        
        stackView.snp.makeConstraints { (make) in
            make.left.top.bottom.equalToSuperview()
        }
        
        
    }
    
    public func fillTexts(originalText: String, preferentialText: String) {
        guard let layout = self.layout else { fatalError("需要初始化 layout 对象")}
        let oas = NSAttributedString(string: originalText, attributes: layout.originalAttributes)
        let ops = NSAttributedString(string: preferentialText, attributes: layout.preferentialAttributes)
        originalLabel.attributedText = oas
        preferentialLabel.attributedText = ops
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
}


struct GoodsPriceUIConfig {
    var unit: String = ""// 价格单位
    var freeText: String = "免费"  //免费文本
    var originalAttributes: [NSAttributedString.Key:Any]
    var preferentialAttributes: [NSAttributedString.Key:Any]
    var layoutType: GoodsPriceUILayoutType = .layoutOriginalRight
}

enum GoodsPriceUILayoutType {
    case layoutOriginalRight
    case layoutOriginalTop
    case layoutOriginalBottom
    case layoutOriginalRightWithIcon
    case layoutOriginalTopWithIcon
    case layoutOriginalBottomWithIcon
    
}
