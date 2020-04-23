//
//  Date+timezone.swift
//  TimeLineShared
//
//  Created by Mathieu Dutour on 23/04/2020.
//  Copyright © 2020 Mathieu Dutour. All rights reserved.
//

import Foundation

fileprivate let cal = Calendar(identifier: .gregorian)

public extension Date {
  func inTimeZone(_ timezone: TimeZone?) -> Date {
    return self.addingTimeInterval(TimeInterval(timezone?.diffInSecond() ?? 0))
  }

  func inTodaysTime() -> Date {
    return cal.startOfDay(for: Date()).addingTimeInterval(self.timeIntervalSince(cal.startOfDay(for: self)))
  }
}
