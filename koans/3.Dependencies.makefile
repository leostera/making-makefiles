#################################################################################
#
# Dependencies are specified by naming them after the target name, such as below
#

all: hello world again
	@echo "DONE"

#
# And they will be executed in _a_ order, that will be resolved after
# calculating all dependencies of the dependencies, such as:
#
# * all depends on hello, world, and again
#
# * hello has no dependencies
#
# * world depends on hello
#
# * again has no dependencies
#
# Which means we can safely execute in order:
#
# * hello && again
# * world
# * all
#
# This becomes obvious when using the `-j` flag to run independant targets
# concurrently.
#

world: hello
	cat hello > world
	echo "world" >> world

hello:
	echo "hello" > hello

again:
	echo "again" >> again

clean:
	rm -f hello world again

#
# Tip: Cleaning shouldn't be a problem if the files aren't there; unfortunately
# handling an error from remove is more troublesome than just running `rm -f`.
#
# Tip Tip: Beware of `rm -f` :P
#
################################################################################
