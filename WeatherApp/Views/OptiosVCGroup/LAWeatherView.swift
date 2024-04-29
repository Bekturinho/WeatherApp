//
//  MyLocationView.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/26/24.
//

import UIKit

class LAWeatherView: UIView{
    
    var actualViewdelegate: DelegateForAny?
   
    
    private lazy var locationLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = .white
        label.text = "Los-Angeles"
        return label
    }()
    
    private lazy var cityLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "9:11 PM"
        label.textColor = .white
        return label
    }()
    private lazy var stateLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "Not as warm tomorrow,\n with a high of 26°"
        label.numberOfLines = 0
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
        label.text = "H:19° L:13°"
        label.textColor = .white
        return label
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor(patternImage: UIImage(named: "sunny") ?? UIImage())
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
            
            stateLAbel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            stateLAbel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            hlLAbel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            hlLAbel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            
            
        
        ])
        
        
    }
    func changeInfoForMyLoc(){
        cityPub = locationLAbel.text ?? ""
        numPub = numberLAbel.text ?? ""
        statePub = stateLAbel.text ?? ""
        hlPub = hlLAbel.text ?? ""
        backImage = "sunny"
    }
  
}

