.POSIX:

ifndef PREFIX
  PREFIX = /usr/local
endif

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f bin/new-repo $(DESTDIR)$(PREFIX)/bin/
	chmod 755 $(DESTDIR)$(PREFIX)/bin/new-repo

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/new-repo

.PHONY: install uninstall
