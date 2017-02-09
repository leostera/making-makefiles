.PHONY: presentation

VIMDECK=vimdeck -p 3

ifeq (,$(VIMDECK))
  $(error, "Please install vimdeck")
endif

start:
	$(VIMDECK) ./README.md
