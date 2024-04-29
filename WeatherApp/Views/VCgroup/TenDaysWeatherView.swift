//
//  tenDaysWeatherView.swift
//  WeatherApp
//
//  Created by fortune cookie on 4/23/24.
//

import UIKit


class TenDaysWeatherView: UIView{
    
   private let daysOfWeekArray = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun","Mon", "Tue", "Wed"]
    
    private let imageArray = ["rainy","night", "almostSunny", "thunder", "rainy","night", "almostSunny", "thunder", "rainy","night", "almostSunny"]
    
    private let grapficIMageArray = ["group1", "group2","group3", "group4","group5", "group1","group2","group3", "group4","group5"]
    
    private var firstNumArray = ["15", "16", "17", "18", "19", "20", "21", "22","23",  "24"]
    
    private var lastNumArray = ["24","23", "23", "23", "32", "23", "22", "44","24","23"]
    
    private lazy var tenDaysCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.itemSize = CGSize(width: 300, height: 30)
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.register(TestingCollectionViewCell.self, forCellWithReuseIdentifier: TimeWeatherCollecionView.id)
        view.backgroundColor = .clear
        view.dataSource = self
        view.showsVerticalScrollIndicator = false
        return view
    }()
   
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addAllSubs()
        addAllConstraints()
    }
    
  
    
    private func addAllSubs(){
        addSubview(tenDaysCollectionView)
        tenDaysCollectionView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addAllConstraints(){
        NSLayoutConstraint.activate([
            tenDaysCollectionView.topAnchor.constraint(equalTo: topAnchor),
            tenDaysCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            tenDaysCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -40),
            tenDaysCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        
        ])
    }
    
    
}

extension TenDaysWeatherView: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        daysOfWeekArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = tenDaysCollectionView.dequeueReusableCell(withReuseIdentifier: TimeWeatherCollecionView.id, for: indexPath) as? TestingCollectionViewCell else{
            return UICollectionViewCell()
            
        }
        cell.setUpAlldata(day: daysOfWeekArray[indexPath.item], weatherIcon: imageArray[indexPath.item], firstNum: firstNumArray[indexPath.item], lastNum: lastNumArray[indexPath.item], graphic: grapficIMageArray[indexPath.item])
        
        
        return cell
    }
    
}
