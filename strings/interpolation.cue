package interpolation

container: {
	repo:    "docker.io/cuelang"
	image:   "cue"
	version: "v0.3.0"
	full:    "\(repo)/\(image):\(version)"
}

s: string & "hello"
b: bytes & 'hello'

s: "\(b)" // convert byte sequence to string
b: '\(s)' // convert string to byte sequence
