PREFIX := /usr/local
DESTINATION = ${DESTDIR}${PREFIX}/bin

all:

install: ${DESTINATION}
	install rofi-jack-connect ${DESTINATION}
	install rofi-jack-device ${DESTINATION}

${DESTINATION}:
	mkdir -p ${DESTINATION}
