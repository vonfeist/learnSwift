//
//  ViewController.swift
//  learnSwift
//
//  Created by Pia Fornfeist on 24.05.19.
//  Copyright © 2019 ethinking. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTabBarController()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        let width = self.view.frame.width
        let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: width, height: 60))
        navigationBar.barTintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        let logo = UIImage(named: "logo.png");
        let imageView = UIImageView(image: logo);

        self.view.addSubview(navigationBar);
        self.navigationItem.titleView = imageView
        navigationBar.setItems([navigationItem], animated: false)
        
    }
    
    func createTabBarController() {
        let tabBarCnt = UITabBarController()
        tabBarCnt.tabBar.tintColor = UIColor.red
        
        let firstVc12 = UIViewController()
        firstVc12.title = "First"
        firstVc12.tabBarItem = UITabBarItem.init(title: "Home", image: UIImage(named: "HomeTab"), tag: 1)
        let secondVc = UIViewController()
        secondVc.title = "Second"
        secondVc.tabBarItem = UITabBarItem.init(title: "Location", image: UIImage(named: "Location"), tag: 0)
        tabBarCnt.viewControllers = [secondVc, firstVc12]
        
        self.view.addSubview(tabBarCnt.view)
    }
    
    @objc func selectorX() {
        
    }

}

