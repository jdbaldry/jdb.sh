#!/bin/sh

set -e
set -f

usage() {
  cat <<EOF
Justify the expense of a .sh domain by presenting my site as a POSIX shell script.
I guess it may as well list the pages.

Usage:
  ./jdb.sh

Examples:
  ./jdb.sh
EOF
}

if [ "$#" -ne 0 ]; then
  case "$1" in
    -h|--help)
      usage

      exit 0
      ;;
    *)
      printf "Unknown option: %s\n" "$1" >&2
      usage

      exit 1
      ;;
  esac
fi

set -u

set +f
ls -1 ./**/*.html ./*.html | sort
set -f
