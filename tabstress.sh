#!/bin/bash
# requires chrome-cli (brew install chrome-cli)
# may need additional scripting permissions on macOS

WINDOWS=`chrome-cli list windows | wc -l | sed -e 's/^[ \t]*//'`
TABS=`chrome-cli list tabs | wc -l | sed -e 's/^[ \s]*//'`

TEXTVALUE="Currently in Chrome: $WINDOWS windows, and $TABS tabs..."

echo $TEXTVALUE
