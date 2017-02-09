#################################################################################
#
# While using make, someone at some point thought they maybe wanted to bypass
# the file check to always run something irregardless of what the target did.
#
# It's a way of defining something that is not really a file, but more of a
# recipe that you want to execute.
#
# To do this, Make has a special syntax described below:
#

.PHONY: phonie

#
# Where `phonie` is the name of a target.
#

phonie:
	echo "phonie" > phonie

clean:
	rm phonie

#
# It's worth noticing that both `clean` and `all` act as phony but if you write
# a `all` or `clean` file, they will check for it.
#
#################################################################################
