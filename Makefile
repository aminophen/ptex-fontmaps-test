TEXJPORG = ../../texjporg/jfontmaps
MAPSETJA = ms ms-osx yu-win yu-win10 yu-osx \
	ipa ipaex moga-mobo moga-mobo-ex ume canon \
	hiragino hiragino-pron \
	hiragino-elcapitan-pron hiragino-elcapitan \
	toppanbunkyu-sierra kozuka kozuka-pr6n kozuka-pr6 \
	morisawa morisawa-pr6n
MAPSETSC = ms ms-osx adobe fandol founder arphic \
	cjkunifonts cjkunifonts-ttf
MAPSETTC = ms ms-win10 dynacomware adobe arphic \
	cjkunifonts cjkunifonts-ttf
MAPSETKO = ms apple adobe baekmuk unfonts solaris

.PHONY: move
move:
	for MAPSETJA in $(MAPSETJA) ; do \
	for DIR in yoko tate ; do \
	for ENGINE in p up ; do \
		if [ -e $(TEXJPORG)/tests/test-ja-$$MAPSETJA-$$DIR-$$ENGINE.pdf ]; then \
		mv $(TEXJPORG)/tests/test-ja-$$MAPSETJA-$$DIR-$$ENGINE.pdf maps-pdf/$$MAPSETJA/ ; \
		fi ; \
		if [ -e $(TEXJPORG)/tests/test-ja-$$MAPSETJA-$$DIR-$$ENGINE-04.pdf ]; then \
		mv $(TEXJPORG)/tests/test-ja-$$MAPSETJA-$$DIR-$$ENGINE-04.pdf maps-pdf/$$MAPSETJA/ ; \
		fi \
	done ; \
	done ; \
	done
	for MAPSETSC in $(MAPSETSC) ; do \
	for DIR in yoko tate ; do \
	for ENGINE in p up ; do \
		if [ -e $(TEXJPORG)/tests/test-sc-$$MAPSETSC-$$DIR-$$ENGINE.pdf ]; then \
		mv $(TEXJPORG)/tests/test-sc-$$MAPSETSC-$$DIR-$$ENGINE.pdf maps-pdf/$$MAPSETSC/ ; \
		fi \
	done ; \
	done ; \
	done
	for MAPSETTC in $(MAPSETTC) ; do \
	for DIR in yoko tate ; do \
	for ENGINE in p up ; do \
		if [ -e $(TEXJPORG)/tests/test-tc-$$MAPSETTC-$$DIR-$$ENGINE.pdf ]; then \
		mv $(TEXJPORG)/tests/test-tc-$$MAPSETTC-$$DIR-$$ENGINE.pdf maps-pdf/$$MAPSETTC/ ; \
		fi \
	done ; \
	done ; \
	done
	for MAPSETKO in $(MAPSETKO) ; do \
	for DIR in yoko tate ; do \
	for ENGINE in p up ; do \
		if [ -e $(TEXJPORG)/tests/test-ko-$$MAPSETKO-$$DIR-$$ENGINE.pdf ]; then \
		mv $(TEXJPORG)/tests/test-ko-$$MAPSETKO-$$DIR-$$ENGINE.pdf maps-pdf/$$MAPSETKO/ ; \
		fi \
	done ; \
	done ; \
	done
