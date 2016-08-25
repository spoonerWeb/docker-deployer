#!/bin/bash

case ${1} in
    dep:live)
        set -e
        HOME="/home/${WEB_USER}" sudo -u ${WEB_USER} -E -- dep -f\"${2}\" deploy live
        exit 0
         ;;
    dep:stage)
        set -e
        HOME="/home/${WEB_USER}" sudo -u ${WEB_USER} -E -- dep -f\"${2}\" deploy stage
        exit 0
         ;;
    dep:develop)
        set -e
        HOME="/home/${WEB_USER}" sudo -u ${WEB_USER} -E -- dep -f\"${2}\" deploy develop
        exit 0
         ;;
esac
