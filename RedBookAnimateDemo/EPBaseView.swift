//
//  EPBaseView.swift
//  RedBookAnimateDemo
//
//  Created by cpo007@qq.com on 16/8/15.
//  Copyright © 2016年 eggplant. All rights reserved.
//

import UIKit

class EPBaseView: UIView,UIScrollViewDelegate {

    var pageControl:UIPageControl?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    func setupUI() {
        let scrollview = EPScrollview(frame: CGRect(x: 0, y: 0, width: frame.width , height: frame.height), number: 3)
        scrollview.backgroundColor = UIColor.redColor()
        scrollview.delegate = self
        addSubview(scrollview)
        
        let pageControl = UIPageControl(frame: CGRect(x: 0, y: 0, width: 80, height: 40))
        pageControl.currentPage = 0
        pageControl.numberOfPages = 3
        pageControl.center = CGPoint(x: center.x, y: scrollview.frame.height + scrollview.frame.origin.y - 20)
        addSubview(pageControl)
        self.pageControl = pageControl
    }
    
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let num = Int(scrollView.contentOffset.x / scrollView.frame.width)
        pageControl?.currentPage = num
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
