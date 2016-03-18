#!/bin/bash

case ${1} in
    dep:live)
        set -e
        dep -f${2} deploy live
        exit 0
         ;;
    dep:stage)
        set -e
        dep -f${2} deploy stage
        exit 0
         ;;
    dep:develop)
        set -e
        dep -f${2} deploy develop
        exit 0
         ;;
esac
