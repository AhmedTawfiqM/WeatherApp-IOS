//
//  WeatherResponse.swift
//  Weather App
//
//  Created by Ahmed Tawfiq on 09/12/2021.
//

import Foundation

struct WeatetherResponse: Codable {
    let coord: Coord
    let weather: [Weather]
    let base: String
    let main: WeatherItem
    let visibility: Int
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let timezone, id: Int
    let name: String
    let cod: Int
}

class FakeWeatherResponse{
    
    static func weatherResponse() ->WeatetherResponse{
        let weatherItem = WeatherItem(temp: 0.0, feelsLike: 0.0, tempMin: 0.0, tempMax: 0.0, pressure: 0, humidity: 0)
        
        let sys = Sys(type: 0, id: 0, message: 0.0, country: "",
                      sunrise: 0, sunset: 0)
        
        return WeatetherResponse(
            coord: Coord(lon: 0.0,lat: 0.0),
            weather: [],
            base: "",
            main: weatherItem,
            visibility: 0,
            wind: Wind(speed: 0.0, deg: 0),
            clouds: Clouds(all: 0),
            dt: 0,
            sys: sys,
            timezone: 0,
            id: 0,
            name: "",
            cod: 0
        )
    }
}


/*
 {
 "coord": {
 "lon": -122.08,
 "lat": 37.39
 },
 "weather": [
 {
 "id": 800,
 "main": "Clear",
 "description": "clear sky",
 "icon": "01d"
 }
 ],
 "base": "stations",
 "main": {
 "temp": 282.55,
 "feels_like": 281.86,
 "temp_min": 280.37,
 "temp_max": 284.26,
 "pressure": 1023,
 "humidity": 100
 },
 "visibility": 16093,
 "wind": {
 "speed": 1.5,
 "deg": 350
 },
 "clouds": {
 "all": 1
 },
 "dt": 1560350645,
 "sys": {
 "type": 1,
 "id": 5122,
 "message": 0.0139,
 "country": "US",
 "sunrise": 1560343627,
 "sunset": 1560396563
 },
 "timezone": -25200,
 "id": 420006353,
 "name": "Mountain View",
 "cod": 200
 }
 */
