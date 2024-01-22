package expressions

import "math"

sum: 3.14 + 7
sub: 3.14 - 7
mul: 3.14 * 7
div: 3.14 / 7

// dividend / divisor = quotient
// dividend % divisor = remainder
dividend:  int & 10
divisor:   int & 7
quotient:  int
remainder: int

quotient: quo(dividend, divisor)
// quotient:  div(dividend, divisor) // not found
remainder: rem(dividend, divisor) // truncated
remainder: mod(dividend, divisor) // Euclidean

floor:   math.Floor(3.1415)
log:     math.Log(3.1415)
tangent: math.Tan(3.1415)
