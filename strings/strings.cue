package strs

import "strings"

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

convert_string_to_bytes: '\(str)'
length_string:           len(strings.Runes(str)) // 23
length_bytes:            len('\(str)')           // 23

smily_face_str_len:  len(strings.Runes(smily_face)) // 1
smily_face_byte_len: len(smily_face)                // 4

#Short_str: string & strings.MinRunes(3) & strings.MaxRunes(80)
#Long_str:  string & strings.MinRunes(81) & strings.MaxRunes(160)

short_one: #Short_str & "one two three four five six seven eight nine ten eleven twelve thirteen fourteen"
long_one:  #Long_str & "one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty"

ascii_constrain_bytes: {
	// set up an alias to allow the following CUE to refer to it
	let content = "only ASCII characters" // 21 runes composed of 21 bytes

	// this embedded scalar ultimately sets the value of the containing field,
	// "ascii_constrain_bytes"
	content

	// enforce that "content" contains between 50 and 100 bytes
	#bytes: len(content) & >=5 & <=100
}

// 2 examples that use multi-byte, South Korean Hangul characters
multibyte_constrain_runes: "한글" // 2 runes composed of 6 bytes
// enforce that the field contains 5 or fewer runes
multibyte_constrain_runes: strings.MaxRunes(5)

multibyte_constrain_bytes: {
	// set up an alias to allow the following CUE to refer to it
	let content = "한글" // 2 runes composed of 6 bytes

	// this embedded scalar ultimately sets the value of the containing field,
	// "multibyte_constrain_bytes"
	content

	// enforce that "content" contains 15 or fewer bytes
	#bytes: len(content) & <=15
}

// 2 examples that use multi-byte, emoji characters
emoji_constrain_runes: "😄🥵🙃🥶" // 4 runes composed of 16 bytes
// enforce that the field contains 3 or more runes
emoji_constrain_runes: strings.MinRunes(3)

emoji_constrain_bytes: {
	// set up an alias to allow the following CUE to refer to it
	let content = "😄🥵🙃🥶" // 4 runes composed of 16 bytes

	// this embedded scalar ultimately sets the value of the containing field,
	// "emoji_constrain_bytes"
	content

	// enforce that "content" contains 10 or more bytes
	#bytes: len(content) & >=10
}
