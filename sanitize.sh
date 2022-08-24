#!/usr/bin/env bash
#===============================================================================
#
#          FILE: sanitize.sh
#
#         USAGE: ./sanitize.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Echo Barros (), shhwip@gmail.com
#  ORGANIZATION: Weber State University
#       CREATED: 08/22/2022 10:01:52 PM
#      REVISION:  ---
#===============================================================================

# set -o nounset                              # Treat unset variables as an error
# shopt -s extglob                                # Extended pattern matching

printLine() {
    numLine=64
    while [ $numLine -gt 1 ]
    do
        printf "*"
        (( numLine-- ))
    done
    printf '\n'
}

if [[ $1 == "--help" ]]
then
    printLine
    # each of the following strings cannot be longer than 60 char
    strings=("Welcome to the help menu!"
    "add options here"
    ""
    ""
    ""
    ""
    "Thank you for choosing my Script")
    printf "* %-60s *\n" "${strings[@]}"
    printLine
    exit 0
fi
sed -i 's/ (.*//g' $1
sed -i 's/ \*.*//g' $1
sed -i 's/[1-9][1-9]?/1/g' $1
# sed -i 's/([1-9])([1-9])?/\1\2x/g' for aetherhub decks to add an x
exit 0

