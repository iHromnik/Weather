//
//  WeatherCollectionViewController.swift
//  Weather
//
//  Created by HappyRoman on 22/04/2022.
//

import UIKit


class WeatherCollectionViewController: UICollectionViewController {

  
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? WeatherCollectionViewCell {
        cell.DayLable.text = "\(indexPath.row + 1)"
        cell.TemperatureLable.text = "35"
       // cell.WeatherImages.image = UIImage(systemName: "sun.max")
       
    
        return cell
        }
        return UICollectionViewCell()
    }

}
