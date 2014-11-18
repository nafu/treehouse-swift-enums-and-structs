// Struct

import UIKit

struct Contact {
	var firstName: String
	var lastName: String
}

var person = Contact(firstName: "Jon", lastName: "Smith")
person.firstName  = "Tom"
person.lastName

struct Contact2 {
	let firstName: String
	let lastName: String
	var type: String = "Friend"
}

var person2 = Contact2(firstName: "Jon", lastName: "Smith", type: "Friend")

// Initializers

struct Contact3 {
	let firstName: String
	let lastName: String
	var type: String

	init(fName: String, lName: String) {
		self.firstName = fName
		self.lastName = lName
		self.type = "Friend"
	}
}

var person3 = Contact3(fName: "Jon", lName: "Smith")

// Struct Methods

struct Contact4 {
	var firstName: String
	var lastName: String
	var type: String

	init(fName: String, lName: String) {
		self.firstName = fName
		self.lastName = lName
		self.type = "Friend"
	}

	func fullName() -> String {
		return self.firstName + " " + self.lastName
		// or
		// return "\(self.firstName) \(self.lastName)"
	}
}

var person4 = Contact4(fName: "Jon", lName: "Smith")
person4.fullName()
person4.firstName = "Tom"
person4.lastName = "Young"
person4.fullName()
