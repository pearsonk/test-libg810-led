CFLAGS_EXTRA=-std=c++11 -Wall
LDFLAGS_EXTRA=-lhidapi-hidraw -lusb-1.0
LOGITECH_FLAGS=-lg810-led
CFILES=src/g810-led-test.cpp
DESTDIR=/usr/bin

build : g810-led-test

all : install

install : g810-led-test
	@cp g810-led-test $(DESTDIR)

g810-led-test:
	$(CXX) $(CFILES) $(CFLAGS) $(CFLAGS_EXTRA) $(LDFLAGS) $(LD_FLAGS_EXTRA) $(LOGITECH_FLAGS) -o g810-led-test

clean:
	rm g810-led-test
