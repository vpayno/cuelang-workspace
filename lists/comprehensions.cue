package listcomp

import "list"

numbers: [1, 2, 3, 4, 5, 6]

// [for key, val in <iterable> [condition] {returned expr}]
squared: [for _, n in numbers {n * n}]
even: [for _, n in numbers if mod(n, 2) == 0 {n}]
odd: [for _, n in numbers if mod(n, 2) != 0 {n}]
indicies: [for i, _ in numbers {i}]
even_i: [for i, n in numbers if mod(i, 2) == 0 {n}]
odd_i: [for i, n in numbers if mod(i, 2) != 0 {n}]

listOfStructs: [for p, n in numbers {
	pos: p
	val: n
}]

extractVals: [for p, S in listOfStructs {S.val}]

range: 5*[int] & [0, 1, 2, 3, 4]
odds: [...int] & [1, 3, 5, 7, 9]
evens: [...int] & [0, 2, 4, 6, 8]

mdim_zip: [for _, i in range {[odds[i]] + [evens[i]]}]
mdim_zip: [for _, i in list.Range(0, 5, 1) {[odds[i]] + [evens[i]]}]
flat_zip: list.FlattenN(mdim_zip, -1)

repeat: list.Repeat([1], 10)
