package comparison

zero: int & >=0 & <=0
zero: int & 0
zero: 0

positive: int & >0
positive: 5

negative: number & <0
negative: -5.1

range: int & >0 & <=10
range: 7

numbers: string & >="0" & <="9"
numbers: "1234"

lowercase: string & >="a" & <="z"
lowercase: "hello world"

uppercase: string & =~#"[A-Z]"#
uppercase: "HELLO WORLD"

not_seven: int & <7 | >7
not_seven: 15
