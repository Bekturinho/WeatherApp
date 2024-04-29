//
//  TimeWeatherCollecionView.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/23/24.
//

import UIKit

class TimeWeatherCollecionView: UIView{
    
    private lazy var descriptionLAbel: UILabel = {
        let label = UILabel()
        label.text = "Cloudy conditions from 1AM-9AM,\n with showers expected at 9AM."
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .white
        return label
    }()
    
    private var imageArray = ["rainy","night", "almostSunny", "thunder", "rainy","night", "almostSunny", "thunder",]
    private var numberArray = ["15", "16", "17", "18", "19", "20", "21", "22"]
    private var timeArray = ["Now", "12am", "1pm", "2pm", "3pm", "4pm", "5pm", "6pm"]
    
    
    
    private lazy var timeWeatherCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 50, height: 200)
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        view.register(TImeWeatherCViewCell.self, forCellWithReuseIdentifier: TimeWeatherCollecionView.id)
        view.dataSource = self
        view.backgroundColor = .clear
        view.showsHorizontalScrollIndicator = false
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(timeWeatherCollectionView)
        timeWeatherCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(descriptionLAbel)
        descriptionLAbel.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = .clear
        
        NSLayoutConstraint.activate([
            descriptionLAbel.trailingAnchor.constraint(equalTo: trailingAnchor),
            descriptionLAbel.leadingAnchor.constraint(equalTo:leadingAnchor, constant: 15),
            descriptionLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            
            
            
            timeWeatherCollectionView.topAnchor.constraint(equalTo: descriptionLAbel.bottomAnchor, constant: 20),
            timeWeatherCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            timeWeatherCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            timeWeatherCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15)
            
        ])
    }
    
  
    
}





extension TimeWeatherCollecionView: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        numberArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = timeWeatherCollectionView.dequeueReusableCell(withReuseIdentifier: TimeWeatherCollecionView.id, for: indexPath) as? TImeWeatherCViewCell else{
           return UICollectionViewCell()
            
        }
        cell.backgroundColor = .clear
        cell.setUpAllElements(time: timeArray[indexPath.item], image: imageArray[indexPath.item], number: numberArray[indexPath.item])
        return cell
    }
    
    
}
