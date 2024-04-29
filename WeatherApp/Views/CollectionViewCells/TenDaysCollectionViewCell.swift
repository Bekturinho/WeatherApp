//
//  TenDaysCollectionViewCell.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/23/24.
//

import UIKit

class TenDaysCollectionViewCell: UICollectionViewCell{
    
    
    private lazy var weekdayLAbel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Beka"
        
        return label
    }()
    
    private lazy var weatherIConImage: UIImageView = {
        let image = UIImageView()
        return image
    }()

    private lazy var minNumberLAbel: UILabel = {
        let label = UILabel()
        return label
    }()

    private lazy var graphicImage: UIImageView = {
        let image = UIImageView()
        return image
    }()


    private lazy var maxNumberLAbel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addAllConstraints()
        addAllSubs()
        backgroundColor = .blue
    }
    
    private func addAllSubs(){
        let uiElementsArray = [weekdayLAbel]
        
        uiElementsArray.forEach({$0.translatesAutoresizingMaskIntoConstraints = false})
        uiElementsArray.forEach({addSubview($0)})
    
    }
    
    
    private func addAllConstraints(){
        NSLayoutConstraint.activate([
            weekdayLAbel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
            
        ])
    }
    
//    func setUpAlldata(day: String, weatherIcon: String, firstNum: String, lastNum:String, graphic: String){
//        weekdayLAbel.text = day
//        weatherIConImage.image = UIImage(named: weatherIcon)
//        minNumberLAbel.text = firstNum
//        maxNumberLAbel.text = lastNum
//        graphicImage.image = UIImage(named: graphic)
//
//    }
}
