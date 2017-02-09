#################################################################################
#
# Different targets can be called by their names.
#
# It's common practice to include `all`, `install`, `clean`, and `distclean`.
#
# Most makefiles around will have at least `all` and `clean` targets.
#

all: hello_world

hello_world:
	echo "hello world" > $@

clean:
	rm hello_world

#
# Try: running these commands in different orders and check the folder with `ls`
#
# Tip: Make provides a variety of useful magic variables, like $@ above, aiding
# you in writing targets that are very generic.
#
# Find them documented here:
# https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html
#
#################################################################################
