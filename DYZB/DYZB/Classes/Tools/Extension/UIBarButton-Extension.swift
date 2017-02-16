//
//  UIBarButton-Extension.swift
//  DYZB
//
//  Created by bob on 17/2/14.
//  Copyright © 2017年 bandeng. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    //类方法
//    class func createItem(imageName : String,highImageName : String, size : CGSize) -> UIBarButtonItem {
//        let btn = UIButton()
//        btn.setImage(UIImage(named : imageName), forState: .Normal)
//        btn.setImage(UIImage(named : highImageName), forState: .Highlighted)
//        btn.frame = CGRect(origin: CGPointZero, size: size)
//        return UIBarButtonItem(customView: btn)
//    }
    
    //便利构造函数：1 convenience开头 2在构造函数中必须明确调用一个设计的构造函数（self）
    convenience init(imageName : String, highImageName : String = "", size : CGSize = CGSizeZero) {
        //创建button
        let btn = UIButton()
        //设置button的图片
        btn.setImage(UIImage(named : imageName), forState: .Normal)
        if highImageName != ""{
            btn.setImage(UIImage(named : highImageName), forState: .Highlighted)
        }
        //设置button的尺寸
        if size == CGSizeZero{
            btn.sizeToFit()
        }else{
            btn.frame = CGRect(origin: CGPointZero, size: size)
        }
        //创建UIBarButtonItem
        self.init(customView : btn)
    }
    
}