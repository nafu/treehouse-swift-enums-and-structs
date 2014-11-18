// Enum Methods or Member Functions
// Initializer

import UIKit

enum Day: Int {
	case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

	init() {
		self = .Monday
	}

	func daysTillWeekend() -> Int {
		return Day.Saturday.rawValue - self.rawValue
	}

	func dayString() -> String {
		switch self {
		case .Monday:
			return "Monday"
		default:
			return "Other Day"
		}
	}
}

var today = Day.Monday
today.daysTillWeekend()

today = .Friday
today.daysTillWeekend()

var holiday = Day.Saturday
holiday.daysTillWeekend()

today = Day()
today.rawValue
today.dayString()
