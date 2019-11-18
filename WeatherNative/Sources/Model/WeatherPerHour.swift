//
//  WeatherPerHour.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

struct WeatherPerHour: Identifiable {
  let id = UUID()

  let hour: Int

  let weather: Weather

  let temperature: Int
  
  let isNow: Bool
}

extension WeatherPerHour {
  private static let dummy = WeatherPerHour(hour: 22, weather: .sunny, temperature: 1, isNow: false)

  static let dummies = [WeatherPerHour](repeating: .dummy, count: 24)
}
