//
//  WeatherVM.swift
//  Weather App
//
//  Created by Ahmed Tawfiq on 09/12/2021.
//

import Foundation

typealias WeatherRequester = AppRequester<WeatetherResponse>

final class WeatherVM : ObservableObject{
    
    @Published var weatherResponse = FakeWeatherResponse.weatherResponse()
    
    @Published var city = "London" {
        didSet{
            getWeather(cityValue: city)
        }
    }
    
    init(){
        getWeather(cityValue: city)
    }
    
    private func getWeather(cityValue: String){
        let url = WeatherApi.getWeather(city: cityValue)
        WeatherRequester().request(for: URL(string: url)!) {
            (result) in
            switch result {
                
            case .success(let response):
                DispatchQueue.main.async {
                    self.weatherResponse = response
                }
            case .failure(let error):
                print(error
                
                
                )
            }
            
        }
    }
    
    var date : String{
        let date = Date(timeIntervalSince1970: TimeInterval(weatherResponse.dt))
        let value = AppDateTime().dateFormatter.string(from: date)
        return value
    }
}
