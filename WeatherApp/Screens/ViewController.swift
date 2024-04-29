//
//  ViewController.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/23/24.
//

import UIKit

class ViewController: UIViewController {
    
   private lazy var actualWeatherInfoView: ActualWeatherView = {
       ActualWeatherView()
   }()
    
    private lazy var timelWeatherInfoView: TimeWeatherCollecionView = {
        TimeWeatherCollecionView()
    }()
    
    private lazy var tenDaysView: TenDaysWeatherView = {
        TenDaysWeatherView()
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "rain") ?? UIImage())
        setUpSubViews()
    }
    
    private func setUpSubViews(){
        addAllSubs()
        makeContraits()
    }
    

    private func addAllSubs(){
        let staffArray = [actualWeatherInfoView,timelWeatherInfoView, tenDaysView]
        staffArray.forEach({view.addSubview($0)})
        staffArray.forEach({$0.translatesAutoresizingMaskIntoConstraints = false})
        
    }
    
    private func makeContraits(){
        NSLayoutConstraint.activate([
            actualWeatherInfoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            actualWeatherInfoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            actualWeatherInfoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            actualWeatherInfoView.heightAnchor.constraint(equalToConstant: 200),
            
            
            
            timelWeatherInfoView.topAnchor.constraint(equalTo: actualWeatherInfoView.bottomAnchor, constant: 30),
            timelWeatherInfoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            timelWeatherInfoView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            timelWeatherInfoView.heightAnchor.constraint(equalToConstant: 220),
            
            
            tenDaysView.topAnchor.constraint(equalTo: timelWeatherInfoView.bottomAnchor, constant: 20),
            tenDaysView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tenDaysView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tenDaysView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
            
        ])
        
        timelWeatherInfoView.layer.borderWidth = 1
        timelWeatherInfoView.layer.borderColor = UIColor.white.cgColor
        timelWeatherInfoView.layer.cornerRadius = 12
        
        
  
    }
    

}

