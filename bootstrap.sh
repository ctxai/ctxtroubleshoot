#!/bin/bash
if [ "$1" = 'pythonrun' ]; then
    cd $PY_DIR
    if [ -n "$(ls -A "$PY_NB")" ]; then
        jupyter nbconvert troubleshoot.ipynb --execute --to html --stdout 
    fi
else
   exec "$@"
fi
