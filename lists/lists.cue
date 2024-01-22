package lists

empty: []
any: [...]
ints: [...int]
strs: [...string]
nested: [...[...int]]

#Tuple: [string, int]
tuple: #Tuple & ["count", 1]

opened: ints & [1, 2, 3, ...]
closed: ints & [1, 2, 3]

#ipv4: 4 * [uint8]
#tendot: #ipv4 & [10, ...]
#one72: #ipv4 & [172, >=16 & <=32, ...]
#one92: #ipv4 & [192, 168, ...]
server1: #tendot & [10, 11, 12, 13]
server2: #one72 & [172, 17, 0, 1]
server3: #one92 & [192, 168, 0, 1]

one: [1, 1]
two: [2, 2]
join1: one + two

join2: opened & closed
join3: closed & opened

mixed: any & ["a", 'a', 1, 1.2, {foo: "bar"}]
