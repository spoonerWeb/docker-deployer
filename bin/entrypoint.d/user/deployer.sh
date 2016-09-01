#!/bin/bash

function deprecationNotice() {
    echo "###################################################"
    echo "### Using dep:live, dep:stage or dep:develop is"
    echo "### deprecated and being removed soon."
    echo "Please use `dep -f path/to/deploy.php deploy target`"
    echo "###################################################"
}

case ${1} in
    dep:live)
        set -e
        dep -f\"${2}\" deploy live
        deprecationNotice
        exit 0
         ;;
    dep:stage)
        set -e
        dep -f\"${2}\" deploy stage
        deprecationNotice
        exit 0
         ;;
    dep:develop)
        set -e
        dep -f\"${2}\" deploy develop
        deprecationNotice
        exit 0
         ;;
esac
