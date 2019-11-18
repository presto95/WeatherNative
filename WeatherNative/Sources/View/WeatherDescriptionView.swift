//
//  WeatherDescriptionView.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import SwiftUI

struct WeatherDescriptionView: View {
  let contents: String

  var body: some View {
    Text(contents)
      .fixedSize(horizontal: false, vertical: true)
      .padding(.horizontal, 20)
  }
}

struct WeatherDescriptionView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherDescriptionView(contents: "오늘: 현재 날씨 대체로 청명함, 기온은 1°이며 오늘 예상 최고 기온은 13°입니다.")
  }
}
