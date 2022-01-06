.PHONY: all clean

VERSION = 1.0.0
PROG = fakedictja-$(VERSION).xpi

all: $(PROG)

$(PROG): dictionaries/ja.aff dictionaries/ja.dic manifest.json
	rm -f $@
	zip $@ $^

clean:
	rm -f $(PROG)
