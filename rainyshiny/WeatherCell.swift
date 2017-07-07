//
//  WeatherCell.swift
//  rainyshiny
//
//  Created by Paul Lathrop on 6/26/17.
//  Copyright © 2017 Paul Lathrop. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!

    
    func configureCell(forecast: Forecast){
    
        lowTemp.text = "\(forecast.lowTemp)"
        highTemp.text = "\(forecast.highTemp)"
        weatherType.text = forecast.weatherType
        weatherIcon.image = UIImage(named: forecast.weatherType)
        //weatherIcon.image = UIImage(named: forecast.date)
        dayLabel.text = forecast.date
    }
    

}
