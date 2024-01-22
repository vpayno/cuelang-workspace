package errors_with_defaults

list: ["a", "b", "c"]

first:  *list[0] | "A" // returns "a"
fourth: *list[3] | "D" // returns "D"

struct: {
	one: 1
}

one: *struct.one | 101 // returns 1
two: *struct.two | 202 // returns 202
