//
//  TImeWeatherCViewCell.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/23/24.
//

import UIKit

class TImeWeatherCViewCell: UICollectionViewCell{
    
    private lazy var timeLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    private lazy var weatherImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()

    
    private lazy var celciousLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()

    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpSubViews()
    }
    
    private func setUpSubViews(){
        let uiElementsArray = [timeLAbel,weatherImageView,celciousLAbel]
        uiElementsArray.forEach({$0.translatesAutoresizingMaskIntoConstraints = false})
        uiElementsArray.forEach({addSubview($0)})
        
        
        NSLayoutConstraint.activate([
            timeLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            timeLAbel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            
            weatherImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            weatherImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            celciousLAbel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            celciousLAbel.centerXAnchor.constraint(equalTo: centerXAnchor)
        
        ])
        
    }
    
    
    func setUpAllElements(time: String, image: String, number: String){
        timeLAbel.text = time
        weatherImageView.image = UIImage(named: image)
        celciousLAbel.text = number
    }
    
    
}
