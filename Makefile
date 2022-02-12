.POSIX:

ifndef PREFIX
	PREFIX = /usr/local
endif

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f bin/stagit-new-repo bin/stagit-gen-index ${DESTDIR}${PREFIX}/bin/
	chmod 755 ${DESTDIR}${PREFIX}/bin/stagit-gen-index ${DESTDIR}${PREFIX}/bin/stagit-new-repo
	mkdir -p /home/git/hooks
	cp hooks/post-receive /home/git/hooks/

uninstall:
	rm ${DESTDIR}${PREFIX}/bin/stagit-gen-index ${DESTDIR}${PREFIX}/bin/stagit-new-repo
	rm /home/git/hooks/post-receive

.PHONY: install uninstall
