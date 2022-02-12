.POSIX:

ifndef PREFIX
  PREFIX = /usr/local
endif

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f bin/stagit-new-repo bin/stagit-gen-index $(DESTDIR)$(PREFIX)/bin/
	chmod 755 $(DESTDIR)$(PREFIX)/bin/stagit-gen-index $(DESTDIR)$(PREFIX)/bin/stagit-new-repo
	cp hooks/post-receive $(DESTDIR)$(PREFIX)/share/
	if [ "$(PREFIX)" ]; then \
		sed -iba 's:/usr/local:$(PREFIX):' $(DESTDIR)$(PREFIX)/bin/stagit-new-repo; \
		rm -f $(DESTDIR)$(PREFIX)/bin/stagit-new-repoba; \
	fi

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/stagit-gen-index $(DESTDIR)$(PREFIX)/bin/stagit-new-repo
	rm $(DESTDIR)$(PREFIX)/share/post-receive

.PHONY: install uninstall
