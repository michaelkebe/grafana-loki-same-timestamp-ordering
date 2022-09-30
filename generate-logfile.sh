#!/bin/sh
append_to_logfile() {
  echo $1 >> $LOGFILE
}

inc_time() {
  UNIXTIME=$((UNIXTIME+1))
}

LOGFILE=/tmp/logfile.log
UNIXTIME=$(date +%s)

rm -f $LOGFILE

inc_time
append_to_logfile "$UNIXTIME OLDEST"
inc_time
append_to_logfile "$UNIXTIME OLDER"
inc_time
append_to_logfile "$UNIXTIME OLD"

inc_time
append_to_logfile "$UNIXTIME THIS SHOULD BE RIGHT NEXT TO line 01"

inc_time
append_to_logfile "$UNIXTIME line 01"
append_to_logfile "$UNIXTIME line 02"
append_to_logfile "$UNIXTIME line 03"
append_to_logfile "$UNIXTIME line 04"
append_to_logfile "$UNIXTIME line 05"
append_to_logfile "$UNIXTIME line 06"
append_to_logfile "$UNIXTIME line 07"
append_to_logfile "$UNIXTIME line 08"
append_to_logfile "$UNIXTIME line 09"
append_to_logfile "$UNIXTIME line 10"
append_to_logfile "$UNIXTIME line 11"
append_to_logfile "$UNIXTIME line 12"
append_to_logfile "$UNIXTIME line 13"
append_to_logfile "$UNIXTIME line 14"
append_to_logfile "$UNIXTIME line 15"
append_to_logfile "$UNIXTIME line 16"
append_to_logfile "$UNIXTIME line 17"
append_to_logfile "$UNIXTIME line 18"
append_to_logfile "$UNIXTIME line 19"
append_to_logfile "$UNIXTIME line 20"

inc_time
append_to_logfile "$UNIXTIME THIS SHOULD BE RIGHT NEXT TO line 20"

inc_time
append_to_logfile "$UNIXTIME NEW"
inc_time
append_to_logfile "$UNIXTIME NEWER"
inc_time
append_to_logfile "$UNIXTIME NEWEST"

