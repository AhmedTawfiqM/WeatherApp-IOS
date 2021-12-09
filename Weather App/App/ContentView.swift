//
//  ContentView.swift
//  Weather App
//
//  Created by Ahmed Tawfiq on 08/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WeatherScreen(vm: WeatherVM())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
