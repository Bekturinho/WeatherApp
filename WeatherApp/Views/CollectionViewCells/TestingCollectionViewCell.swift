//
//  TestingCollectionViewCell.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/26/24.
//

import UIKit

class TestingCollectionViewCell: UICollectionViewCell{
    
    private lazy var weekdayLAbel: UILabel = {
        let label = UILabel()
        label.text = "test"
        return label
    }()
    
    private lazy var minNumberLAbel: UILabel = {
        let label = UILabel()
        label.text = "test"
        return label
    }()
    
    private lazy var maxNumberLAbel: UILabel = {
        let label = UILabel()
        label.text = "test"
        return label
    }()
    
    private lazy var weatherIConImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.and.arrow.up")
        return image
    }()
    
    private lazy var graphicImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.and.arrow.up")
        return image
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        let array = [weekdayLAbel, minNumberLAbel, maxNumberLAbel, weatherIConImage, graphicImage]
        array.forEach({$0.translatesAutoresizingMaskIntoConstraints = false})
        array.forEach({addSubview($0)})
        backgroundColor = .clear
        
        NSLayoutConstraint.activate([
            weekdayLAbel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            weekdayLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            
            weatherIConImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 65),
            weatherIConImage.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            
            graphicImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            graphicImage.topAnchor.constraint(equalTo: topAnchor, constant: 13),
            
            minNumberLAbel.trailingAnchor.constraint(equalTo: graphicImage.leadingAnchor, constant: -10),
            minNumberLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 5),

            
            maxNumberLAbel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            maxNumberLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
        
        ])
    }
    
    func setUpAlldata(day: String, weatherIcon: String, firstNum: String, lastNum:String, graphic: String){
        weekdayLAbel.text = day
        weatherIConImage.image = UIImage(named: weatherIcon)
        minNumberLAbel.text = firstNum
        maxNumberLAbel.text = lastNum
        graphicImage.image = UIImage(named: graphic)
        
        [weekdayLAbel,minNumberLAbel,maxNumberLAbel].forEach({$0.textColor = .white})

    }
}
