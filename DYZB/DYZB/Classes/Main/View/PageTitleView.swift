//
//  PageTitleView.swift
//  DYZB
//
//  Created by bob on 17/2/14.
//  Copyright © 2017年 bandeng. All rights reserved.
//

import UIKit

private let kScrollLineH : CGFloat = 2

class PageTitleView: UIView {

    //定义属性
    private var titles : [String]
    
    //懒加载属性
    private lazy var scrollView : UIScrollView = {
        let  scrollerview = UIScrollView()
        scrollerview.showsHorizontalScrollIndicator = false
        scrollerview.scrollsToTop = false
        scrollerview.pagingEnabled = false
        scrollerview.bounces = false
        return scrollerview
    }()
    
    //mark 自定义构造函数
    init(frame : CGRect ,titles : [String]){
        self.titles = titles
        super.init(frame: frame)
        
        setupUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has bot been implemented")
    }
}

//设置UI界面
extension PageTitleView{
    private func setupUI(){
        //添加UIScrollView
        addSubview(scrollView)
        scrollView.frame = bounds
        
        //添加title对应的Lable
        setupTitleLable()
        
        //设置底线和滚动滑块
        setupBottomMenuAndScrollLine()
    }
    private func setupBottomMenuAndScrollLine(){
        //添加底线
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.lightGrayColor()
        let lineH : CGFloat = 0.5
        bottomLine.frame = CGRect(x: 0, y: frame.height - lineH, width: frame.width, height: lineH)
        scrollView.addSubview(bottomLine)
        
        //添加scrollview滚动线
    }
    
    private func setupTitleLable(){
        //预先确定lable的frame的值
        let lableW :CGFloat = frame.width / CGFloat(titles.count)
        let lableH :CGFloat = frame.height - kScrollLineH
        let lableY :CGFloat = 0
        for (index ,title) in titles.enumerate(){
            //创建UILable
            let lable = UILabel()
            
            //设置lable的属性
            lable.text = title
            lable.tag = index
            lable.font = UIFont.systemFontOfSize(16.0)
            lable.textColor = UIColor.darkGrayColor()
            lable.textAlignment = .Center
            
            //设置lable的frame
            let lableX :CGFloat = lableW * CGFloat(index)
            
            lable.frame = CGRect(x: lableX, y: lableY, width: lableW, height: lableH)
            
            //将lable添加到scrollview中
            scrollView.addSubview(lable)
            
        }
    }
}