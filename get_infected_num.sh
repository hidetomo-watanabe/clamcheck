#!/bin/bash

clamscan | grep 'Infected files' | cut -d: -f2 | tr -d ' '
