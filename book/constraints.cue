package book

import "strings"

book: #Book & {
	title: strings.MinRunes(5)
	year:  >1950
	pages: >0
}
