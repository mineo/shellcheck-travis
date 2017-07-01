#!/bin/bash
shopt -s globstar
cwd="$(pwd)"
declare -a scripts=()

for i in **/*.sh; do
    scripts+=("${i##${cwd}}")
done

docker run --volume "${cwd}":/scripts --workdir /scripts koalaman/shellcheck "${scripts[@]}"
exit $?
