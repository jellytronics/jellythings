#!/bin/bash

echo "Initializing Ttytter"

ttytter

ttytter -status="$(id -un) @ $(hostname) says: Hi"'!'" @ $(date +"%m-%d-%Y %T %Z")"


