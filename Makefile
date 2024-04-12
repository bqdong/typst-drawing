blackboard.pdf: blackboard.typ
	typst c $< $@

all: blackboard.pdf

clean:
	rm *.pdf

