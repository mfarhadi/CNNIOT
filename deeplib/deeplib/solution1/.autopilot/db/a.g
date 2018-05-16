#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/common/FPGA/deeplib/deeplib/solution1/.autopilot/db/a.g.bc ${1+"$@"}
