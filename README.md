# shellcheck-travis

This repository provides a working setup for using [shellcheck](http://www.shellcheck.net/)
on [Travis CI](https://travis-ci.org/). It can be used as a starting point for other repositories
that contain shell scripts or can be dropped into existing repositories.

## Details

The `.travis.yml` in this repository pulls the [shellcheck](https://hub.docker.com/r/koalaman/shellcheck/) Docker image and
then calls `travis/travis.sh` which automatically discovers all shell scripts in
the repository.
