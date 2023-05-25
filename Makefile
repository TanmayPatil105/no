INSTALL_DIR=/usr/bin
BINARY=no

all: build

build: main.c
	gcc main.c -o no

install: build
	mv ${BINARY} ${INSTALL_DIR}

