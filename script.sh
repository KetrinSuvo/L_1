#!/bin/bash

#remove suid bit
chmod u-s /usr/bin/chfn
chmod u-s /usr/bin/chsh
chmod u-s /usr/bin/passwd

#change capabilities
setcap cap_setuid,cap_chown+ep /usr/bin/chfn
setcap cap_setuid,cap_chown+ep /usr/bin/chsh
setcap cap_chown,cap_dac_override,cap_fowner+ep /usr/bin/passwd

exit 0
