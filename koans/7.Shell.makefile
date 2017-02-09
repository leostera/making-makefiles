.PHONY: salute

#################################################################################
#
# The command $(shell ...) can be used to execute commands in the shell and save
# the output as a variable.
#
# Let's try defaulting our greeter to use our username:
#

NAME = $(shell whoami)

ifndef NAME
  $(error "Please specify a name")
endif

#
#	Try: change the `whoami` script to do nothing. What happened to NAME? Is it
#	defined now?
#
#
# Also now that we know how to run shell comands, we can convert the name to
# uppercase on target runtime! Let's do some piping :)
#

salute:
ifdef SHOUT
	echo "HELLO THERE $(shell echo $(NAME) | awk '{ print toupper($0) }' )!!!"
else
	echo "Hello, $(NAME)"
endif

#
#################################################################################
