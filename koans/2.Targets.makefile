all: hello_world

hello_world:
	echo "hello world" > $@

clean:
	rm hello_world
