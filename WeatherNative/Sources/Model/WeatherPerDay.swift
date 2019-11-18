//
//  WeatherPerDay.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

struct WeatherPerDay: Identifiable {
  let id = UUID()
  
  let day: Day

  let weather: Weather

  let highestTemperature: Int
  
  let lowestTemperature: Int
}

extension WeatherPerDay {
  private static let dummy = WeatherPerDay(day: .tuesday
    , weather: .sunny, highestTemperature: 17, lowestTemperature: -6)

  static let dummies = [WeatherPerDay](repeating: .dummy, count: 10)
}
