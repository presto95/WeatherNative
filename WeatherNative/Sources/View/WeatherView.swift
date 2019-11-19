//
//  WeatherView.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import SwiftUI

struct WeatherView: View {
  let screenWidth = UIScreen.main.bounds.width
  var body: some View {
    ZStack {
      LinearGradient(gradient: .init(colors: [.blue, .green, .yellow, .gray, .black]), startPoint: .top, endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)

      VStack(spacing: 0) {
        VStack(spacing: 0) {
          WeatherPrimarySummaryView(weatherSummary: .dummy)
            .frame(width: screenWidth, height: screenWidth)

          WeatherSecondarySummaryView(weatherSummary: .dummy)
            .padding(.horizontal, 20)
            .padding(.bottom, 8)
        }

        Divider()

        WeatherPerHourListView(weatherPerHourList: WeatherPerHour.dummies)
          .padding(.horizontal, 16)
          .padding(.top, 4)
          .padding(.bottom, 8)

        Divider()

        ScrollView(showsIndicators: false) {
          WeatherPerDayListView(weatherPerDayList: WeatherPerDay.dummies)
            .padding(.horizontal, 20)
            .padding(.vertical, 8)

          Divider()

          WeatherDescriptionView(contents: "오늘: 현재 날씨 대체로 청명함, 기온은 1°이며 오늘 예상 최고 기온은 13°입니다.")
            .padding(.horizontal, 20)
            .padding(.vertical, 4)

          Divider()

          WeatherDetailView(weatherDetail: .dummy)
            .padding(.horizontal, 20)
        }

        Divider()

        BottomMiscellaneousView()
          .frame(height: 30)
          .padding(.horizontal, 20)
          .padding(.vertical, 8)
      }
      .edgesIgnoringSafeArea(.top)
    }
  }

  var dragGesture: some Gesture {
    DragGesture()
      .onChanged { value in
        print(value.location.y)
//        self.yOffset = value.location.y
      }
      .onEnded { value in }
  }
}

struct WeatherView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherView()
      .environment(\.colorScheme, .dark)
  }
}
