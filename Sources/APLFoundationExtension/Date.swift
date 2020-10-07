//
// Created by apploft on 16.01.19.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/

import Foundation

extension Date {
    static let OneHour: TimeInterval = 3600

    /// Return the range of todays day
    public static var todayRange: ClosedRange<Date> {
        let calendar = Calendar.init(identifier: Locale.current.calendar.identifier)
        let startOfDay = calendar.startOfDay(for: Date(timeIntervalSinceNow: 0))
        let endOfDay = startOfDay.addingTimeInterval(OneHour * 24 - 1)

        return startOfDay...endOfDay
    }

    /// Return the range of the current hour
    public static var thisHourRange: ClosedRange<Date> {
        let now = Date(timeIntervalSinceNow: 0)
        let calendar = Calendar.current
        var startOfHour = calendar.date(bySetting: .minute, value: 0, of: now) ?? now

        if startOfHour != now {
            // Calendar.date(bySetting: ..., value: ..., of: ...)
            // rounds to the next hour when we set minute to 0
            // we have to correct this by going back one hour again.
            startOfHour = startOfHour.addingTimeInterval(-OneHour)
        }

        let endOfHour = startOfHour.addingTimeInterval(OneHour - 1)

        return startOfHour...endOfHour
    }

    /// Return tomorrows date at the earliest possible time
    public static var tomorrow: Date {
        return todayRange.upperBound + 1
    }

    /// Return the date of the next hour based on the current hour
    public static var nextHour: Date {
        return thisHourRange.upperBound + 1
    }
    
    /// Boolean value indicating whether the date is today.
    public var isToday: Bool {
        Self.todayRange.contains(self)
    }
}
