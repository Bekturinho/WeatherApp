//
//  OptionsViewController.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/26/24.
//

import UIKit

public var cityPub = ""
public var numPub = ""
public var statePub = ""
public var hlPub = ""
public var backImage = ""


class OptionsViewController: UIViewController{
    
    var delegate =  ViewController()
    
    private lazy var mainTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Weather"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    private lazy var weatherSearchBar: UISearchBar = {
        let view = UISearchBar()
        view.placeholder = "Search for a city or airport"
        view.barTintColor = .black
        return view
    }()
    
    private lazy var myLocation: MyLocationView = {
       let view =  MyLocationView()
        let tapAction = UITapGestureRecognizer(target: self, action: #selector(changeLocation))
        view.addGestureRecognizer(tapAction)
        return view
    }()
    
    
    private lazy var laLocation: LAWeatherView = {
        let view =  LAWeatherView()
         let tapAction = UITapGestureRecognizer(target: self, action: #selector(changeLocationToLA))
         view.addGestureRecognizer(tapAction)
         return view
    }()
    
    private lazy var kiotoLocation: KiotoWeatherView = {
        let view =  KiotoWeatherView()
         let tapAction = UITapGestureRecognizer(target: self, action: #selector(changeLocationToKioto))
         view.addGestureRecognizer(tapAction)
         return view

    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        addAllsubs()
        addAllconstraints()
        
    }
    
    private func addAllsubs(){
        let uiElements = [myLocation, mainTitleLabel, weatherSearchBar, laLocation, kiotoLocation]
        uiElements.forEach({$0.translatesAutoresizingMaskIntoConstraints = false})
        uiElements.forEach({view.addSubview($0)})
    }
    
    private func addAllconstraints(){
        
        NSLayoutConstraint.activate([
            mainTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            mainTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            weatherSearchBar.topAnchor.constraint(equalTo: mainTitleLabel.bottomAnchor, constant: 30),
            weatherSearchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            weatherSearchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            myLocation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myLocation.topAnchor.constraint(equalTo: weatherSearchBar.bottomAnchor, constant: 30),
            myLocation.widthAnchor.constraint(equalToConstant: 380),
            myLocation.heightAnchor.constraint(equalToConstant: 120),
            
            laLocation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            laLocation.topAnchor.constraint(equalTo: myLocation.bottomAnchor, constant: 30),
            laLocation.widthAnchor.constraint(equalToConstant: 380),
            laLocation.heightAnchor.constraint(equalToConstant: 120),
            
            kiotoLocation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            kiotoLocation.topAnchor.constraint(equalTo: laLocation.bottomAnchor, constant: 30),
            kiotoLocation.widthAnchor.constraint(equalToConstant: 380),
            kiotoLocation.heightAnchor.constraint(equalToConstant: 120)
        
        ])
        myLocation.layer.cornerRadius = 10
        laLocation.layer.cornerRadius = 10
        kiotoLocation.layer.cornerRadius = 10
    }
    
    @objc func changeLocation(){       
        let controller = ViewController()
        navigationController?.pushViewController(controller, animated: true)
      
        myLocation.changeInfoForMyLoc()
    }
    
    @objc func changeLocationToLA(){        
        let controller = ViewController()
        navigationController?.pushViewController(controller, animated: true)
        laLocation.changeInfoForMyLoc()
    }

    @objc func changeLocationToKioto(){    
        let controller = ViewController()
        navigationController?.pushViewController(controller, animated: true)
        kiotoLocation.changeInfoForMyLoc()
        
      
        
    }

}

extension OptionsViewController: DelegateForAny{
    func updateData() {
        myLocation.changeInfoForMyLoc()
    }
    
    
}
