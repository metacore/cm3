#!/bin/sh
# $Id: do-cm3-min.sh,v 1.2 2001-02-12 22:39:00 wagner Exp $

if [ -n "$ROOT" -a -d "$ROOT" ] ; then
  sysinfo="$ROOT/scripts/sysinfo.sh"
else
  root=`pwd`
  while [ -n "$root" -a ! -f "$root/scripts/sysinfo.sh" ] ; do
    root=`dirname $root`
  done
  sysinfo="$root/scripts/sysinfo.sh"
  if [ ! -f "$sysinfo" ] ; then
    echo "scripts/sysinfo.sh not found" 1>&2
    exit 1
  fi
  export root
fi

. "$sysinfo"
. "$ROOT/scripts/pkginfo.sh"
. "$ROOT/scripts/pkgcmds.sh"

P=""
P="${P} m3core"
P="${P} libm3"

USAGE="
  `basename $0` [ generic_options ] [ generic_cmd ]

  will apply the given symbolic command to the following packages:

`print_list4 ${P}`

  generic_options:
${GEN_OPTS}
  
  generic_cmd:
${GEN_CMDS}"

show_usage $@

OPTIONS=`extract_options $@`
ACTION=`map_action $@`
ADDARGS=`add_action_opts $@`

echo "$ROOT/scripts/pkgmap.sh" ${OPTIONS} ${ADDARGS} -c \""${ACTION}"\" ${P}
"$ROOT/scripts/pkgmap.sh" ${OPTIONS} ${ADDARGS} -c "${ACTION}" ${P}

