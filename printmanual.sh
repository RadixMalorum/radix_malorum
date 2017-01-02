#!/bin/sh
gs -sNOPAUSE -sDEVICE=stcolor -sDithering=fsmono -dUnidirectional \
-dMicroweave \
-sOutputFile=/dev/lp0 $1 -c quit
