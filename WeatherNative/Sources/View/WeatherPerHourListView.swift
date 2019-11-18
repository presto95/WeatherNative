//
//  WeatherPerHourListView.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import SwiftUI

struct WeatherPerHourListView: View {
  let weatherPerHourList: [WeatherPerHour]

  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack {
        ForEach(weatherPerHourList) { weatherPerHour in
          self.hourWeatherCell(with: weatherPerHour)
        }
      }
    }
  }

  func hourWeatherCell(with weatherPerHour: WeatherPerHour) -> some View {
    VStack(spacing: 0) {
      Text(weatherPerHour.isNow ? "지금" : "\(weatherPerHour.hour)시")
        .fontWeight(weatherPerHour.isNow ? .semibold : .regular)
        .padding(.bottom, 8)

      Image(systemName: weatherPerHour.weather.systemImageName)
        .padding(.vertical, 16)

      Text("\(weatherPerHour.temperature)°")
        .padding(.top, 8)
    }
    .padding(.horizontal, 8)
  }
}

struct WeatherPerHourListView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherPerHourListView(weatherPerHourList: WeatherPerHour.dummies)
  }
}
