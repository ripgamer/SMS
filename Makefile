TARGET = sms
OBJS = sms.o
LDLIBS = -lcurl
CFLAGS := $(CFLAGS)
MANUAL = sms.1

INSTALL = install

$(TARGET): $(OBJS)

install:
	$(INSTALL) -d $(BINDIR)
	$(INSTALL) -m 0755 $(TARGET) $(BINDIR)
	$(INSTALL) -d $(MANDIR)
	$(INSTALL) -m 0644 $(MANUAL) $(MANDIR)