#!/bin/sh

if[ "${EUID:-$(id -u)}" -eq 0 ]; then
 exit 0
fi
exit 1
