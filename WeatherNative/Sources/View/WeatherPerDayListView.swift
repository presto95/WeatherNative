//
//  WeatherPerDayListView.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import SwiftUI

struct WeatherPerDayListView: View {
  let weatherPerDayList: [WeatherPerDay]

  var body: some View {
    VStack {
      ForEach(weatherPerDayList) { weatherPerDay in
        self.dayWeatherCell(with: weatherPerDay)
      }
    }
  }

  func dayWeatherCell(with weatherPerDay: WeatherPerDay) -> some View {
    HStack {
      HStack {
        Text(weatherPerDay.day.description)

        Spacer()
      }
      .frame(maxWidth: .infinity)

      Image(systemName: weatherPerDay.weather.systemImageName)

      HStack(spacing: 24) {
        Spacer()

        Text("\(weatherPerDay.highestTemperature)")

        Text("\(weatherPerDay.lowestTemperature)")
          .foregroundColor(.secondary)
      }
      .frame(maxWidth: .infinity)
    }
  }
}

struct WeatherPerDayListView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherPerDayListView(weatherPerDayList: WeatherPerDay.dummies)
  }
}
