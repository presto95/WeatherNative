//
//  WeatherSecondarySummaryView.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/19.
//  Copyright © 2019 presto. All rights reserved.
//

import SwiftUI

struct WeatherSecondarySummaryView: View {
  let weatherSummary: WeatherSummary

  var body: some View {
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
          .foregroundColor(.secondary)
      }
    }
  }
}

struct WeatherSecondarySummaryView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherSecondarySummaryView(weatherSummary: .dummy)
  }
}
