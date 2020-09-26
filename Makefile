#
# Makefile
#
all: etc_asterisk/asterisk.conf  usr/share/doc/asterisk-config/examples/configs/modules.conf.sample
	@echo "FYI: (minimal set of) configuration files are available"

etc_asterisk/asterisk.conf:
	@mkdir --parents etc_asterisk
	echo "; only a place holder" > etc_asterisk/asterisk.conf

usr/share/doc/asterisk-config/examples/configs/modules.conf.sample:
	@mkdir --parents usr/share/doc/asterisk-config/examples/configs
	echo "; place holder" \
	> usr/share/doc/asterisk-config/examples/configs/modules.conf.sample


install:
	install --directory $(DESTDIR)/usr
	install --directory $(DESTDIR)/etc/asterisk
	rsync --archive --delete usr/* $(DESTDIR)/usr
	rsync --archive --delete etc_asterisk/* $(DESTDIR)/etc/asterisk

# l l
