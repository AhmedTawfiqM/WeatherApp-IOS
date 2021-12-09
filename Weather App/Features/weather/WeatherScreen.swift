//
//  WeatherScreen.swift
//  Weather App
//
//  Created by Ahmed Tawfiq on 09/12/2021.
//

import Foundation
import SwiftUI

struct WeatherScreen : View {
    @ObservedObject var vm:WeatherVM
    
    var body : some View{
        VStack(spacing: 5){
            Text("Today")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            let pressure = vm.weatherResponse.main.pressure
            Text(String(pressure))
                .font(.largeTitle)
                .bold()
        }
    }
}
