package structcomp

words: ["one", "two", "three"]

#Labels: [string]: string

things: {
	for i, word in words {
		"\(word)": {
			name: word
			labels: #Labels & {
				foo:  "bar"
				tier: "\(1)"
			}
		}
	}
}
