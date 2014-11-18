// DaysInWeek

import UIKit

// fragile approach
let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

func weekdayOrWeekend(dayOfWeek: String) -> String {
	switch dayOfWeek {
	case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":
		return "It's a weekday"
	case "Saturday", "Sunday":
		return "Yay! It's the weekend!"
	default:
		return "Not a valid day"
	}
}

weekdayOrWeekend(days[6])

// enum approach
enum Day {
	case Monday
	case Tuesday
	case Wednesday
	case Thursday
	case Friday
	case Saturday
	case Sunday
	// you can also define as below
	// case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

func weekdayOrWeekendWithEnum(dayOfWeek: Day) -> String {
	switch dayOfWeek {
	case Day.Monday, Day.Tuesday, Day.Wednesday, Day.Thursday, Day.Friday:
	// you can also use like this
	// case .Monday, .Tuesday, .Wednesday, .Thursday, .Friday:
		return "It's a weekday"
	case Day.Saturday, Day.Sunday:
	// you can also use like this
	// case .Saturday, .Sunday:
		return "Yay! It's the weekend!"
	default:
		return "Not a valid day"
	}
}

weekdayOrWeekendWithEnum(Day.Sunday)

var today = Day.Monday
today = .Sunday

enum DayWithRawValue: Int {
	case Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6, Sunday = 7
	// same as above
	// case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

func daysTillWeekend(day: DayWithRawValue) -> Int {
	return DayWithRawValue.Saturday.rawValue - day.rawValue
}

daysTillWeekend(DayWithRawValue.Friday)

DayWithRawValue(rawValue: 3)
DayWithRawValue(rawValue: 10)

if let firstDayOfWeek = DayWithRawValue(rawValue: 1) {
	daysTillWeekend(firstDayOfWeek)
}
