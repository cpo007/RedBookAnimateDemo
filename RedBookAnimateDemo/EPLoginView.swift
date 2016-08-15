//
//  EPLoginView.swift
//  RedBookAnimateDemo
//
//  Created by cpo007@qq.com on 16/8/15.
//  Copyright © 2016年 eggplant. All rights reserved.
//

import UIKit

class EPLoginView: UIView {

    var backgroundImageView:UIImageView?
    var logoImgaeView:UIImageView?
    var loginView:UIView?


    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    func setupUI() {
        let backgroudImageView = UIImageView(frame: frame)
        backgroudImageView.image = UIImage(named: "backgroud")
        addSubview(backgroudImageView)
        self.backgroundImageView = backgroudImageView
        
        let logoImgaeView = UIImageView(frame: CGRect(x: 0, y: 0, width: 210, height: 210))
        logoImgaeView.image = UIImage(named: "Logo")
        logoImgaeView.center = center
        addSubview(logoImgaeView)
        self.logoImgaeView = logoImgaeView
        
        let loginView = UIView(frame: CGRect(x: 0, y: frame.height, width: frame.width, height: frame.height * 2 / 3 + 60))
        addSubview(loginView)
        self.loginView = loginView
        
        let loginButton = UIButton(frame: CGRect(x: 0, y: 0, width: loginView.frame.width / 2, height: 60))
        loginButton.setTitle("登录", forState: .Normal)
        loginButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        loginView.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(EPLoginView.buttonDidClick), forControlEvents: .TouchUpInside)
        
        let signButton = UIButton(frame: CGRect(x:loginView.frame.width / 2 , y: 0, width: loginView.frame.width / 2, height: 60))
        signButton.setTitle("注册", forState: .Normal)
        signButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        loginView.addSubview(signButton)
        
        let scrollView = EPScrollview(frame: CGRect(x: 0, y: 60, width: loginView.frame.width, height: loginView.frame.height - 60), number: 2)
        loginView.addSubview(scrollView)


        
    }
    
    func buttonDidClick() {
        print(1)
    }
    
    //当说明界面消失时修改登录界面布局
    func updateUI() {
        UIView.animateWithDuration(0.3) {
            self.backgroundImageView?.frame = self.frame
            self.logoImgaeView?.frame = CGRect(x: 0, y: 0, width: 70, height: 70)
            self.logoImgaeView?.center = self.center
            self.loginView?.frame.origin = CGPoint(x: 0, y: self.frame.height - 60)
        }

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
