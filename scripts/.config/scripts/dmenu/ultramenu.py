#!/usr/bin/python
import sys
import subprocess as s


def run():
    s.call(["dmenu_run", "-fn", "Terminus (TTF)", "-nb", "#1a1b26", "-nf", "#c3ccf2", "-sb", "#ff5b77", "-sf", "#1a1b26", "-h", "26", "-p", "Choose program:", "-l", "15"])

def script():
    s.call(["dmenu", "-fn", "Terminus (TTF)", "-nb", "#1a1b26", "-nf", "#c3ccf2", "-sb", "#ff5b77", "-sf", "#1a1b26", "-h", "26", "-l", "15"])


if sys.argv[1] == "-run":
    run()
else:
    script()
