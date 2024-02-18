#!/usr/bin/env bash

printf "Instance Directory Structure\n"

if [[ ! -d cue.mod ]]; then
	cue mod init
	git add cue.mod
	printf "\n"
fi

if [[ -f 2.cue ]]; then
	mkdir -pv A
	git mv 2.cue A/
	printf "\n"
fi

if [[ -f 3.cue ]]; then
	mkdir -pv A/B
	git mv 3.cue A/B
	printf "\n"
fi

if [[ ! -d A/C ]]; then
	mkdir -pv A/C
	cat A/C/3.cue <<-EOF
		package basics

		x: 91
	EOF
	git add A/C
	printf "\n"
fi

pwd
printf "\n"

for d in . A A/B A/C; do
	(
		cd "${d}" || exit
		pwd
		printf "\n"

		bat ./*.cue
		printf "\n"

		echo cue eval
		cue eval
		printf "\n"
	)
done
