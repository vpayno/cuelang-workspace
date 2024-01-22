package numbers

one: number
one: int
one: int64 // int & >=-9223372036854775808 & <=9223372036854775807

one: 1_234

pi: number
pi: 3.1415

#Hex: uint8 // int & >=0 & <=255

hex: #Hex & 0xFF // 255

octal: 0o77 // 165

binary: 0b01010_0101 // 165

memory: 4Gi
disk:   4G

large: 23e+45

// apparenty you can do math
sum: 1 + 1
sub: 1 - 1
mul: 2 * 2
div: 4 / 2
