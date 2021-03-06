BIN ?= nb
BIN_BOOKMARK ?= bookmark
BIN_NOTES ?= notes
PREFIX ?= /usr/local

install:
	install $(BIN) $(PREFIX)/bin
	install bin/$(BIN_BOOKMARK) $(PREFIX)/bin
	install bin/$(BIN_NOTES) $(PREFIX)/bin
	./$(BIN) env install

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)
	rm -f $(PREFIX)/bin/$(BIN_BOOKMARK)
	rm -f $(PREFIX)/bin/$(BIN_NOTES)
	./$(BIN) env uninstall
