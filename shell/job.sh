#!/bin/bash

BM=$HOME/github/documents/bookmarks/bm.md
LOG=$HOME/.log/job.log
ERR=$HOME/.log/job.err
# start time
log() {
  echo "`date`: $1" >> $LOG
}

log "start job ..."

# cd $DOT_HOME &&
if [ -f "$BM" ];
then
  log "deleting $BM"
  /bin/rm $BM
fi

log "running bookmark bakup to -> $BM"
/usr/local/bin/buku -e $BM 2>$ERR
log "done"
