#!/bin/sh
#Script new opens a new Terminal window
osascript  <<EOF
tell app "System Events"
  keystroke "t" using command down
  end tell
 EOF
