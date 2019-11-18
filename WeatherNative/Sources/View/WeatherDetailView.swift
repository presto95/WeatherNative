//
//  WeatherDetailView.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import SwiftUI

struct WeatherDetailView: View {
  let weatherDetail: WeatherDetail

  var body: some View {
    VStack {
      VStack(spacing: 0) {
        HStack {
          self.detailCell(title: "일출", contents: weatherDetail.sunrise)

          self.detailCell(title: "일몰", contents: weatherDetail.sunset)
        }

        Divider()
          .padding(.vertical, 4)

        HStack {
          detailCell(title: "눈 올 확률", contents: "\(weatherDetail.snowProbability)%")

          detailCell(title: "습도", contents: "\(weatherDetail.humidity)%")
        }

        Divider()
          .padding(.vertical, 4)

        HStack {
          detailCell(title: "바람", contents: weatherDetail.wind)

          detailCell(title: "체감", contents: "\(weatherDetail.sensibleTemperature)°")
        }

        Divider()
          .padding(.vertical, 4)

        HStack {
          detailCell(title: "강수량", contents: "\(weatherDetail.rainfall)cm")

          detailCell(title: "기압", contents: "\(weatherDetail.pressure)hPa")
        }

        Divider()
          .padding(.vertical, 4)

        HStack {
          detailCell(title: "가시거리", contents: "\(weatherDetail.visibility)km")

          detailCell(title: "자외선 지수", contents: "\(weatherDetail.ultraviolet)")
        }
      }
      .padding(.horizontal, 20)
    }
  }

  func detailCell(title: String, contents: String) -> some View {
    HStack {
      VStack(alignment: .leading) {
        Text(title)
          .font(.footnote)
          .foregroundColor(.gray)

        Text(contents)
          .font(.title)
      }

      Spacer()
    }
    .frame(maxWidth: .infinity)
  }
}

struct WeatherDetailView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherDetailView(weatherDetail: .dummy)
  }
}
