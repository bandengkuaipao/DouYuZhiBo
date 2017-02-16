//
//  MainViewController.swift
//  DYZB
//
//  Created by bob on 17/2/14.
//  Copyright © 2017年 bandeng. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVc("Home")
        addChildVc("Live")
        addChildVc("Follow")
        addChildVc("Profile")
        
        // Do any additional setup after loading the view.
    }

    private func addChildVc(storyName:String){
        //通过storyboard获取控制器
        let childVc = UIStoryboard(name:storyName,bundle: nil).instantiateInitialViewController()!
        //将childVc作为子控制器添加
        addChildViewController(childVc)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
