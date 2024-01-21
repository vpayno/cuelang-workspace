#!/usr/bin/env bash

# https://stackoverflow.com/questions/19529688/how-to-merge-2-json-objects-from-2-files-using-jq

# top-level: object ->
#	reduce .[] as $item ({}; . * $item)
#	. * input
# top-level: list -> flatten | group_by(keys[]) | map(reduce .[] as $item ({}; . * $item))

# order here matters, user data goes after cue export
{
	cue export --out json ./book/*.cue
	jq . ./book/user.json
} | jq --slurp 'reduce .[] as $item ({}; . * $item)'
