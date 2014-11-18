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
