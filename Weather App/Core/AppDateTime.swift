//
//  AppDateTime.swift
//  Weather App
//
//  Created by Ahmed Tawfiq on 09/12/2021.
//

import Foundation


struct AppDateTime{
    enum Format{
        case eee
        case hh_a
    }
    
    //TODO:
    func date(format: Format) -> String {
        return ""
    }
    
    var dateFormatter:  DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
    
    var dayFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"
        return formatter
    }()
    
    lazy var timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh a"
        return formatter
    }()
}
