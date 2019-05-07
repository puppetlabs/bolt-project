#!/bin/sh

# This is shell task that prints the hostname and the value
# of a task parameter called 'message'. Note the shebang is
# the first line of the file and will be used as the interpreter
# on the target system.

echo $(hostname) got passed the message: $PT_message