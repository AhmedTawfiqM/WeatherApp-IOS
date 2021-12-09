//
//  WeatherDetails.swift
//  Weather App
//
//  Created by Ahmed Tawfiq on 09/12/2021.
//

import Foundation

struct Clouds: Codable {
    let all: Int
}

struct Coord: Codable {
    let lon, lat: Double
}

struct Sys: Codable {
    let type, id: Int
    let message: Double
    let country: String
    let sunrise, sunset: Int
}


struct Wind: Codable {
    let speed: Double
    let deg: Int
}
