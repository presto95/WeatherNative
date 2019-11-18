//
//  WeatherDetail.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/19.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

struct WeatherDetail: Identifiable {
  let id = UUID()

  let sunrise: String

  let sunset: String

  let snowProbability: Int

  let humidity: Int

  let wind: String

  let sensibleTemperature: Int

  let rainfall: Double

  let pressure: Int

  let visibility: Double

  let ultraviolet: Int
}

extension WeatherDetail {
  static let dummy = WeatherDetail(sunrise: "07:14", sunset: "17:18", snowProbability: 0, humidity: 61, wind: "서북서 1m/s", sensibleTemperature: -1, rainfall: 0.3, pressure: 1022, visibility: 11.3, ultraviolet: 0)
}
