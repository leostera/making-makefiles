.PHONY: salute

#################################################################################
#
# Conditionals can be used to enforce variables are present
#

ifndef NAME
  $(error "Please specify a name")
endif

#
#################################################################################

#################################################################################
#
# Conditionals can be included inside targets as well
#
salute:
ifdef SHOUT
	echo "HELLO THERE $(NAME)!!!"
else
	echo "Hello, $(NAME)"
endif

#
#################################################################################
