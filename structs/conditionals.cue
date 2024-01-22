package condfileds

import "math"

import "list"

#Number: {
	value: int
	even:  bool | *false
	prime: bool | *false

	if math.Mod(value, 2) == 0 {
		even: true
	}

	// yes, this only works for the first 14 numbers
	if (math.Mod(value, 2) != 0 || value == 2) && value != 0 && value != 1 {
		prime: true
	}
}

numbers_struct: {
	for i, n in list.Range(0, 15, 1) {
		"number_\(n)": #Number & {
			value: n
		}
	}
}

numbers_list: [
	for _, s in numbers_struct {
		s
	},
]
