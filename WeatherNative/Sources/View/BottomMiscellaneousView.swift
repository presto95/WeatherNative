//
//  BottomMiscellaneousView.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

import SwiftUI

struct BottomMiscellaneousView: View {
  var body: some View {
    HStack {
      Image(systemName: "heart.fill")

      Spacer()

      Image(systemName: "ellipsis")

      Spacer()

      Image(systemName: "list.bullet")
    }
  }
}

struct BottomMiscellaneousView_Previews: PreviewProvider {
  static var previews: some View {
    BottomMiscellaneousView()
  }
}
