//
//  WeatherPrimarySummaryView.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import SwiftUI

struct WeatherPrimarySummaryView: View {
  let weatherSummary: WeatherSummary

  var body: some View {
    VStack(spacing: 8) {
      VStack {
        Text(self.weatherSummary.area)
          .font(.largeTitle)

        Text(self.weatherSummary.weatherDescription)
      }

      Text("\(self.weatherSummary.currentTemperature)°")
        .font(.system(size: 100, weight: .thin))
    }
    .shadow(radius: 1, y: 1)
  }
}

struct WeatherPrimarySummaryView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherPrimarySummaryView(weatherSummary: .dummy)
  }
}
