#################################################################################
#
# Using $(shell ...) and some shell magic, we can generate lists of files that
# match some patterns (think all .js files, or all .png files, or anything you
# can list really) as our inputs, and generate the names of the outputs.
#
# Say we have a bunch of text files that we want to compress:
#

TEXT_FILES = $(shell find files -name "*.txt")
GZIP_FILES = $(TEXT_FILES:files/%.txt=files/%.gzip)

#
# Great, now these are lists of files that look like:
#
# 	files/1.txt files/2.txt
# 	files/1.gzip files/2.gzip
#
# And if we define a target for each of them, we can use them as dependencies:
#

all: $(GZIP_FILES)

list:
	@echo $(TEXT_FILES)
	@echo $(GZIP_FILES)

#
# But this would be painful and we would have to add new targets for each new
# pair of files, so instead let's write a _generic target_ that can deal with
# a pattern:
#

files/%.gzip: files/%.txt
	gzip -c $^ > $@

clean:
	rm -f files/*.gzip

# This way, we only recreate the gzip files if any of the text files have
# changed, and only for the file has changed.
#
# Try: touch or modify one of the txt files in the files folder, and rerun
# this makefile twice. Do it again with a different file. Now run the clean
# target first.
#
#################################################################################
