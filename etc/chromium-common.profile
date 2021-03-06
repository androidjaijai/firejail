# Firejail profile for chromium-common
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/chromium-common.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.pki

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-programs.inc

mkdir ${HOME}/.pki
whitelist ${DOWNLOADS}
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc
include /etc/firejail/whitelist-var-common.inc

caps.keep sys_chroot,sys_admin
netfilter
nodvd
nogroups
notv
shell none

disable-mnt
private-dev
# private-tmp - problems with multiple browser sessions

noexec ${HOME}
noexec /tmp
