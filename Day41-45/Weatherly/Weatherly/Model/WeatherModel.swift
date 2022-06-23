//
//  WeatherModel.swift
//  Weatherly
//
//  Created by Shaheem PP on 23/06/22.
//

import Foundation

let secretStruct = secrets()

struct WeatherModel{
    
    
    func fetchCity(name : String) -> String{
        let url = "https://api.openweathermap.org/data/2.5/weather?q=\(name)&appid=\(secretStruct.secretkey)&units=metric"
        return url
    }
}
