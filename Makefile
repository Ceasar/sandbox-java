
targets=HelloWorld.class

all: $(targets)
	java HelloWorld

%.class: %.java
	javac $<

clean:
	rm $(targets)
