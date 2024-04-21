package main

import (
	"fmt"
	"log"

	"cuelang.org/go/cue"
	"cuelang.org/go/cue/cuecontext"
	"cuelang.org/go/cue/load"
)

func main() {
	ctx := cuecontext.New()

	// Load the cue packge from the current directory.
	// No config needed for this example.
	insts := load.Instances([]string{"."}, nil)

	// We have one package so we get a single instance.
	v := ctx.BuildInstance(insts[0])
	if err := v.Err(); err != nil {
		log.Fatal(err)
	}

	// Look up the `output` field and print it out.
	output := v.LookupPath(cue.ParsePath("output"))
	fmt.Println(output)
}
