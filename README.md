# Making Makefiles

A brief Lunch & Learn about Makefiles

Clone from: https://github.com/ostera/making-makefiles

by @ostera


# History

Make was created a long time ago. It's been around since 1976.

Before Make there used to come bundled both `make` and `install` shell scripts
that would help building and installing the project.

Lastly, it's ultimate purpose was to abstract out dependency tracking, allow for
composability of targets, and handling of files/archives.


# Trivia

1. It has at least 4 rewrites (bmake, pmake, fmake, nmake)
2. Was created at Bell Labs by Stuart Feldman
3. Fedlman got the 2003 ACM Software System Award for it


# Composition

### Targets

* Typically define files in the file system
* Are checked for modification time
* May have Dependencies (Other Targets)


# Composition

### Variables

* Can be input from the outside world
* Can have default values
* Can be exported for scripts and other makefiles


# Hands-On


# The End

Questions?
