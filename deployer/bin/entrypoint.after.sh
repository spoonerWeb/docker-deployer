#!/bin/bash

case ${1} in
    dep:live)
        set -e
        dep live
        exit 0
         ;;
    dep:develop)
        set -e
        dep develop
        exit 0
         ;;
esac
