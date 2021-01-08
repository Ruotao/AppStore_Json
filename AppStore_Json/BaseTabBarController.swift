//
//  BaseTabBarController.swift
//  AppStore_Json
//
//  Created by Eddie on 2021/1/5.
//

import Foundation
import UIKit

class BaseTabBarController: UITabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let appVC = setVC(title: "APPS")
        let searchVC = setVC(title: "Search")
        let todayVC = setVC(title: "Today")
        
        appVC.view.backgroundColor = .yellow
        searchVC.view.backgroundColor = .blue
        todayVC.view.backgroundColor = .green
       
        let appNavigationVC = setNavigationVC(tites: "App", vctitle:"APPS",imgName: "apps", vc: appVC)
        let searchNavigationVC = setNavigationVC(tites: "Search",vctitle:"Search", imgName: "search", vc: SearchViewController(collectionViewLayout: UICollectionViewFlowLayout()))
        let todayNavigationVC = setNavigationVC(tites: "Today",vctitle:"Today", imgName: "today", vc:todayVC)
//MARK: 添加vc进入tabbarcontroller
        self.viewControllers = [
            todayNavigationVC,
            appNavigationVC,
            searchNavigationVC
        ]
    }
    
    
    
 
    
}
extension BaseTabBarController {
    
    //MARK: -设置BaseTabBarController 方法
    func setNavigationVC(tites:String, vctitle:String, imgName: String, vc:UIViewController) -> UINavigationController {
        let navVC = UINavigationController(rootViewController: vc)
        vc.navigationItem.title = vctitle
        navVC.navigationBar.prefersLargeTitles = true
        navVC.tabBarItem.title = tites
        navVC.tabBarItem.image = UIImage(named: imgName)
        return navVC
    }
    
    
    
    func setVC(title:String)->UIViewController{
        let vc = UIViewController()
        vc.navigationItem.title = title
        return vc
    }
}


