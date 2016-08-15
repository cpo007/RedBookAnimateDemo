//
//  EPView.swift
//  RedBookAnimateDemo
//
//  Created by cpo007@qq.com on 16/8/15.
//  Copyright © 2016年 eggplant. All rights reserved.
//

import UIKit

class EPView: UIView {

    init(frame: CGRect , image:UIImage) {
        super.init(frame: frame)
        setupUI()
    }
    
    func setupUI() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height * 2 / 3))
        imageView.backgroundColor = UIColor.redColor()
        addSubview(imageView)
        
        let titleLabel = UILabel(frame: CGRect(x: 20, y: imageView.frame.height, width: frame.width, height: 30))
        titleLabel.text = "Test"
        let SubTitle = UILabel(frame: CGRect(x: 20, y: titleLabel.frame.origin.y + 30, width: frame.width, height: frame.height * 1 / 3 - 30))
        SubTitle.text = "Test2"
        addSubview(titleLabel)
        addSubview(SubTitle)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
