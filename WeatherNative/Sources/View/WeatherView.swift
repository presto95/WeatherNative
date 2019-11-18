//
//  WeatherView.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import SwiftUI

struct WeatherView: View {
  var body: some View {
    VStack(spacing: 0) {
      ScrollView(showsIndicators: false) {
        WeatherSummaryView(weatherSummary: .dummy)

        Divider()

        WeatherPerHourListView(weatherPerHourList: WeatherPerHour.dummies)

        Divider()

        WeatherPerDayListView(weatherPerDayList: WeatherPerDay.dummies)

        Divider()

        WeatherDescriptionView(contents: "오늘: 현재 날씨 대체로 청명함, 기온은 1°이며 오늘 예상 최고 기온은 13°입니다.")

        Divider()

        WeatherDetailView(weatherDetail: .dummy)
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)

      Divider()

      BottomMiscellaneousView()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}

struct WeatherView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherView()
  }
}
