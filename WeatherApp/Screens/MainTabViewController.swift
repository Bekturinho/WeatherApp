//
//  MainTabViewController.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/26/24.
//

import UIKit


class MainTabViewController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViewControllers()
        tabBar.backgroundColor = .black
        tabBar.selectedImageTintColor = .white
        tabBar.unselectedItemTintColor = .systemGray
        
    }
    
    private func setUpViewControllers(){
        let map = generateViewControllers(title: "Map", image: UIImage(named: "map"), vc: MapViewController())
        let main = generateViewControllers(title: "Main", image:UIImage(named: "main") , vc: ViewController())
        let options = generateViewControllers(title: "Options", image:UIImage(named: "options") , vc: OptionsViewController())
    
        setViewControllers([map,main,options], animated: true)
        
        
    }
    
    private func generateViewControllers(title: String, image: UIImage?, vc: UIViewController) -> UIViewController{
        vc.tabBarItem.title = title
        vc.tabBarItem.image = image
        
        
        
        return vc
    }
}

