//
//  WeatherSummaryView.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import SwiftUI

struct WeatherSummaryView: View {
  let weatherSummary: WeatherSummary

  var body: some View {
    primaryView
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .aspectRatio(1, contentMode: .fill)
      .overlay(secondaryView, alignment: .bottom)
  }

  var primaryView: some View {
    VStack(spacing: 8) {
      VStack {
        Text(weatherSummary.area)
          .font(.largeTitle)

        Text(weatherSummary.weatherDescription)
      }

      Text("\(weatherSummary.currentTemperature)°")
        .font(.system(size: 84, weight: .light))
    }
  }

  var secondaryView: some View {
    HStack {
      HStack(alignment: .bottom) {
        Text(weatherSummary.day.description)

        Text("오늘")
          .font(.caption)
      }

      Spacer()

      HStack(spacing: 24) {
        Text("\(weatherSummary.highestTemperature)")

        Text("\(weatherSummary.lowestTemperature)")
          .foregroundColor(.gray)
      }
    }
    .padding(.horizontal, 20)
  }
}

struct WeatherSummaryView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherSummaryView(weatherSummary: .dummy)
  }
}
