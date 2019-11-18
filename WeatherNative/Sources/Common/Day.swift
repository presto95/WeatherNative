//
//  Day.swift
//  WeatherNative
//
//  Created by Presto on 2019/11/18.
//  Copyright © 2019 presto. All rights reserved.
//

enum Day: Int {
  case sunday

  case monday

  case tuesday

  case wednesday

  case thursday

  case friday
  
  case saturday
}

extension Day: CustomStringConvertible {
  var description: String {
    switch self {
    case .sunday:
      return "일요일"
    case .monday:
      return "월요일"
    case .tuesday:
      return "화요일"
    case .wednesday:
      return "수요일"
    case .thursday:
      return "목요일"
    case .friday:
      return "금요일"
    case .saturday:
      return "토요일"
    }
  }
}
