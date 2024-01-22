package strings

str: string
str: "this is an utf-8 string"

data: bytes
data: 'this is a byte sequence'

smily_face: string
smily_face: "\U0001F60A"

multiline_text: string
multiline_text: """
	hello
	    world
	!
	"""

multiline_byte: bytes
multiline_byte: '''
	hello
	    world
	!
	'''

#SemverA: string & =~"v[0-9]+\\.[0-9]+\\.[0-9]+"
semver1:  #SemverA
semver1:  "v1.2.3"
semver2:  #SemverA
semver2:  "blah-v1.2.3-p1"

#SemverB: string & =~"^v[0-9]+\\.[0-9]+\\.[0-9]+$"
semver3:  #SemverB
semver3:  "v1.2.3"
// semver4:  #SemverB
// semver4:  "blah-v1.2.3-p1" // invalid value "blah-v1.2.3-p1" (out of bound =~"^v[0-9]+\\.[0-9]+\\.[0-9]+$")

#SemverC: string & =~#"^v[0-9]+\.[0-9]+\.[0-9]+$"#
semver5:  #SemverC
semver5:  "v1.2.3"

bell:           "\a"
backspace:      "\b"
form_feed:      "\f"
line_feed:      "\n"
newline:        "\n"
return:         "\r" // discarded from string value
horizontal_tab: "\t"
vertical_tab:   "\v"
slash:          "\/"
backslash:      "\\"
single_quote:   '\''
double_quote:   "\""

octal: '\123' // S
hex:   '\x97'
mixed: 'a\000\xab'

utf8_str:  "日本語"                                  // UTF-8 input text
utft_byte: '日本語'                                  // UTF-8 input text as byte sequence
one:       "\u65e5\u672c\u8a9e"                   // the explicit Unicode code points
two:       "\U000065e5\U0000672c\U00008a9e"       // the explicit Unicode code points
three:     '\xe6\x97\xa5\xe6\x9c\xac\xe8\xaa\x9e' // the explicit UTF-8 bytes

raw_string: #"avoid using \ to "escape""#
str2: ##"""
	#"""
	a nested multiline
	    string goes here
	"""#
	"""##

byte_sequence: '\x03abc\U0001F604' //  "b": "A2FiY/CfmIQ=" when exported (base64)
