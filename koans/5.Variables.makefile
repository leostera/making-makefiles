.PHONY: salute

#################################################################################
#
# Variables can be defined in a variety of ways, the most common is with a
# default value, like below:
#

NAME = Joey

#
# This means $(NAME) will be replaced by Joey on all of it's occurrences below,
# but it will only take the value Joey if no other value has been passed to it.
#
#################################################################################


#################################################################################
#
# Variables can be utilised through the $(VARIABLE_NAME) notation anywhere, and
# they will be eagerly replaced across the makefile.
#

salute:
	echo "Hello, $(NAME)!"

#
#################################################################################
