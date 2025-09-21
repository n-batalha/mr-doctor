all: binary

binary:
	cp src/diagnostic-menu.sh build/
	cp dist/stress-ng build
	makeself build mister-doctor.sh "MiSTer Doctor" ./diagnostic-menu.sh
	mv mister-doctor.sh dist/

deploy-local:
	scp dist/mister-doctor.sh root@mister.local:/media/fat/Scripts/mister-doctor.sh