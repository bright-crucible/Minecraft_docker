#!/usr/bin/env bash
set -e

cd /overviewer/
nice -n19 /overviewer/overviewer.py --config=settings.py 2>&1 | tee overviewer.log
