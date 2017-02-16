//
//  HomeViewController.swift
//  DYZB
//
//  Created by bob on 17/2/14.
//  Copyright © 2017年 bandeng. All rights reserved.
//

import UIKit

private let kTitleViewH  : CGFloat = 40

class HomeViewController: UIViewController {

    //懒加载属性
    private lazy var pageTitleView : PageTitleView = {
        let titleFrame = CGRect(x: 0, y: kStatusBarH + kNavigationBarH, width: kScreenW , height: kTitleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        return titleView
    }()
    
    //系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
    }

}

//MARK  设置UI界面
extension HomeViewController{
    private func setupUI(){
        //不需要调整UIScrollView的内边距
        automaticallyAdjustsScrollViewInsets = false
        
        //设置导航栏
        setupNavigationBar()
        
        //添加titleView
        view.addSubview(pageTitleView)
    }
    private func setupNavigationBar(){
        //设置左侧的item
//        let btn = UIButton()
//        btn.setImage(UIImage(named: "logo"), forState: .Normal)
//        btn.sizeToFit()
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")

        //设置右侧的item
        let size = CGSize(width: 40, height: 40)
        
        //构造函数
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName:"btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(imageName:"Image_scan", highImageName: "Image_scan_click", size: size)
        
        //类方法
//        let historyItem = UIBarButtonItem.createItem("image_my_history", highImageName: "Image_my_history_click", size: size)
//        let searchItem = UIBarButtonItem.createItem("btn_search", highImageName: "btn_search_clicked", size: size)
//        let qrcodeItem = UIBarButtonItem.createItem("Image_scan", highImageName: "Image_scan_click", size: size)
        
        
//        let historyBtn = UIButton()
//        historyBtn.setImage(UIImage(named: "image_my_history"), forState: .Normal)
//        historyBtn.setImage(UIImage(named: "Image_my_history_click"), forState: .Highlighted)
//        historyBtn.frame = CGRect(origin: CGPointZero ,size: size)
//        let historyItem = UIBarButtonItem(customView: historyBtn)
//        
//        let searchBtn = UIButton()
//        searchBtn.setImage(UIImage(named: "btn_search"), forState: .Normal)
//        searchBtn.setImage(UIImage(named: "btn_search_clicked"), forState: .Highlighted)
//        searchBtn.frame = CGRect(origin: CGPointZero ,size: size)
//        let searchItem = UIBarButtonItem(customView: searchBtn)
//        
//        let qrcodeBtn = UIButton()
//        qrcodeBtn.setImage(UIImage(named: "Image_scan"), forState: .Normal)
//        qrcodeBtn.setImage(UIImage(named: "Image_scan_click"), forState: .Highlighted)
//        qrcodeBtn.frame = CGRect(origin: CGPointZero ,size: size)
//        let qrcodeItem = UIBarButtonItem(customView: qrcodeBtn)
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]

    }
}