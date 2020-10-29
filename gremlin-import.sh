#!/usr/bin/env bash

# ensure all files exist
for input; do
	test -f $input && continue
	echo No such file: $input >&2
	exit 2
done

{
	echo :remote connect tinkerpop.server conf/remote.yaml
	echo :remote console
	for input; do
		echo :load $PWD/$input
	done
} | gremlin.sh -Q
