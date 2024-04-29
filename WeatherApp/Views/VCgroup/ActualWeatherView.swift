//
//  ActualWeatherView.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/23/24.
//

import UIKit


class ActualWeatherView: UIView{
    
    private lazy var cityNameLabel: UILabel = {
        let label = UILabel()
        label.text = cityPub
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .white
        return label
    }()
    
    private lazy var numberOfWeatherLabel: UILabel = {
        let label = UILabel()
        label.text =  numPub
        label.font = UIFont.systemFont(ofSize: 80)
        label.textColor = .white
        return label
    }()
    
    private lazy var stateOfWeatherLabel: UILabel = {
        let label = UILabel()
        label.text = statePub
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    private lazy var HLLabel: UILabel = {
        let label = UILabel()
        label.text = hlPub
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .clear
        addAllSubs()
        addAllConstraits()
    }
    
    private func addAllSubs(){
        let staffArray = [cityNameLabel,numberOfWeatherLabel,stateOfWeatherLabel,HLLabel]
        staffArray.forEach({addSubview($0)})
        
        staffArray.forEach({$0.translatesAutoresizingMaskIntoConstraints = false})
        
    }
    
    private func addAllConstraits(){
        
        NSLayoutConstraint.activate([
            cityNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            cityNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            numberOfWeatherLabel.topAnchor.constraint(equalTo: cityNameLabel.bottomAnchor, constant: 10),
            numberOfWeatherLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            stateOfWeatherLabel.topAnchor.constraint(equalTo: numberOfWeatherLabel.bottomAnchor, constant: 10),
            stateOfWeatherLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            HLLabel.topAnchor.constraint(equalTo: stateOfWeatherLabel.bottomAnchor, constant: 10),
            HLLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
            
            
            
        
        
        ])
        
    }
    
    func changeInfo(city: String, number: String, state: String, hl: String){
        cityNameLabel.text = city
        numberOfWeatherLabel.text = number
        stateOfWeatherLabel.text = state
        HLLabel.text = hl
        
        print([cityNameLabel.text, numberOfWeatherLabel.text,stateOfWeatherLabel.text, HLLabel.text])
    }
}


