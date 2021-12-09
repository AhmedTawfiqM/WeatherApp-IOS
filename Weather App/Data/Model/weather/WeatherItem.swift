//
//  WeatherItem.swift
//  Weather App
//
//  Created by Ahmed Tawfiq on 09/12/2021.
//

import Foundation

struct WeatherItem: Codable {
    let temp, feelsLike, tempMin, tempMax: Double
    let pressure, humidity: Int

    enum CodingKeys: String, CodingKey {
        case temp = "temp"
        case feelsLike = "feels_like"
        case tempMin
        case tempMax
        case pressure, humidity
    }
}

struct Weather: Codable ,Identifiable {
    let main, weatherDescription, icon: String
    
    enum CodingKeys: String,CodingKey {
        case main
        case weatherDescription
        case icon
    }
    
    init(){
        main = ""
        weatherDescription = ""
        icon = ""
    }
}

extension Weather{
    var id: UUID {
        return UUID()
    }
}
