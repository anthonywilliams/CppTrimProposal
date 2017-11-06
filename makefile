all: doc src

doc:
	cd doc && make

rapidcheck:
	mkdir -p RapidCheckBuild
	cd RapidCheckBuild && cmake ../RapidCheck && make

src: rapidcheck
	cd src && make

clean: clean-doc clean-src clean-rapidcheck

clean-doc:
	cd doc && make clean

clean-src:
	cd src && make clean

clean-rapidcheck:
	rm -rf RapidCheckBuild

.PHONY: all doc src clean clean-doc clean-src rapidcheck clean-rapidcheck
