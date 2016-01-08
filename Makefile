
classpath=.:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar
sources=$(wildcard *.java)
targets=$(sources:.java=.class)

all: $(targets)
	java HelloWorld

%.class: %.java
	javac -cp $(classpath) $<

clean:
	rm $(targets)

test: $(targets)
	java -cp $(classpath) org.junit.runner.JUnitCore HelloWorldTest
