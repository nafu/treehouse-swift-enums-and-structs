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
