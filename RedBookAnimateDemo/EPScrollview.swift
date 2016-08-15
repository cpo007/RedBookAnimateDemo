//
//  EPScrollview.swift
//  RedBookAnimateDemo
//
//  Created by cpo007@qq.com on 16/8/15.
//  Copyright © 2016年 eggplant. All rights reserved.
//

import UIKit

class EPScrollview: UIScrollView {
    init(frame: CGRect , number:Int) {
        super.init(frame: frame)
        pagingEnabled = true
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
        bounces = false
        setupUI(number)
        
    }
    
    func setupUI(num: Int) {
        let number = CGFloat(num)
        layer.cornerRadius = 5
        contentSize = CGSize(width: frame.width * number, height: 0)
        for i in 0..<num {
            setSubview(i)
        }
    }
    
    func setSubview(number:Int) {
        let view = EPView(frame: CGRect(x: frame.width * CGFloat(number), y: 0, width: frame.width, height: frame.height - 40), image: UIImage())
        addSubview(view)
        
    }
    
    func getView(number:Int) -> UIView  {
        let view = UIView(frame: CGRect(x: frame.width * CGFloat(number), y: 0, width: frame.width, height: frame.height))
        return view
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print(1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
