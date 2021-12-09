//
//  WeatherApi.swift
//  Weather App
//
//  Created by Ahmed Tawfiq on 08/12/2021.
//

import Foundation


struct WeatherApi{
    
    static func getWeather(city: String) -> String{
        return "\(BaseUrl.debug)weather?q=\(city)$appid=\(APi.key)"
    }
}
