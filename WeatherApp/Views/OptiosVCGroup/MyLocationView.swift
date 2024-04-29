//
//  MyLocationView.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/26/24.
//

import UIKit

class MyLocationView: UIView{
    
    
    private lazy var actualWeatherInfoView: ActualWeatherView = {
        ActualWeatherView()
    }()
    
    
    private lazy var locationLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = .white
        label.text = "My Location"
        return label
    }()
    
    private lazy var cityLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Chicago, IL"
        label.textColor = .white
        return label
    }()
    private lazy var stateLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "Partly Cloudy"
        label.textColor = .white
        return label
    }()
    private lazy var numberLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 40)
        label.text = "31°"
        label.textColor = .white
        return label
    }()
    private lazy var hlLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "H:29° L:15°"
        label.textColor = .white
        return label
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor(patternImage: UIImage(named: "rain") ?? UIImage())
        addAllSubs()
        addAllConstaints()
        
    }
    
    private func addAllSubs(){
        let uiElements = [numberLAbel,cityLAbel,hlLAbel,locationLAbel,stateLAbel]
        uiElements.forEach({$0.translatesAutoresizingMaskIntoConstraints = false})
        uiElements.forEach({addSubview($0)})
        
    }
    
    private func addAllConstaints(){
        NSLayoutConstraint.activate([
            locationLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            locationLAbel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            numberLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            numberLAbel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            cityLAbel.topAnchor.constraint(equalTo: locationLAbel.bottomAnchor, constant: 5),
            cityLAbel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            stateLAbel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            stateLAbel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            hlLAbel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            hlLAbel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            
            
            
        ])
        
    }
    
    func changeInfoForMyLoc(){
        cityPub = cityLAbel.text ?? ""
        numPub = numberLAbel.text ?? ""
        statePub = stateLAbel.text ?? ""
        hlPub = hlLAbel.text ?? ""
        backImage = "rain"
    }
    
    
  
    
}
