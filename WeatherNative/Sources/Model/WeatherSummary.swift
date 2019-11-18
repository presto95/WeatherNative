//
//  WeatherSummary.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

struct WeatherSummary: Identifiable {
  let id = UUID()
  
  let area: String

  let weatherDescription: String

  let currentTemperature: Int

  let day: Day

  let highestTemperature: Int

  let lowestTemperature: Int
}

extension WeatherSummary {
  static let dummy = WeatherSummary(area: "노원구", weatherDescription: "대체로 청명함", currentTemperature: 1, day: .monday, highestTemperature: 13, lowestTemperature: -3)
}
