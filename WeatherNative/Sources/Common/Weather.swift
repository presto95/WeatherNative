//
//  Weather.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

enum Weather: String {
  case sunny

  case cloudy

  case rainy
  
  case snowy
}

extension Weather {
  var systemImageName: String {
    switch self {
    case .sunny:
      return "sun.max.fill"
    case .cloudy:
      return "cloud.fill"
    case .rainy:
      return "cloud.heavyrain.fill"
    case .snowy:
      return "snow"
    }
  }
}
