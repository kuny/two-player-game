#--------------------------------------------------
# Project:
# Purpose:
#--------------------------------------------------

.PHONY: run test

run:
	@chez --libdirs src:. --script src/main.ss

test:
	@chez --libdirs src:. --script test/test.ss

