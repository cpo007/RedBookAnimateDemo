//
//  ViewController.swift
//  RedBookAnimateDemo
//
//  Created by cpo007@qq.com on 16/8/15.
//  Copyright © 2016年 eggplant. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    var loginView:EPLoginView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        
        let loginView = EPLoginView(frame: view.frame)
        view.addSubview(loginView)
        self.loginView = loginView
        
        let scrollview = UIScrollView(frame: view.frame)
        view.addSubview(scrollview)
        scrollview.pagingEnabled = true
        scrollview.showsVerticalScrollIndicator = false
        scrollview.showsHorizontalScrollIndicator = false
        scrollview.contentSize = CGSize(width: view.frame.width * 2, height: view.frame.height)
        scrollview.delegate = self
        
        let contentView = EPBaseView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width * 2 / 3, height: self.view.frame.height * 2 / 3))
        contentView.center = view.center
        scrollview.addSubview(contentView)
        

    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let num = Int(scrollView.contentOffset.x / scrollView.frame.width)
        if num > 0 {
            scrollView.removeFromSuperview()
            loginView?.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 3)
            loginView?.updateUI()
        }
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

