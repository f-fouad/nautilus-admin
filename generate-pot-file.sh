#!/bin/sh
# This script generates the po/nautilus-admin.pot file
FILEPATH="$(readlink -f "$0")"
DIR="$(dirname "$FILEPATH")"
cd "$DIR"
xgettext --package-name=nautilus-admin \
         --package-version=0.1.5 \
         --copyright-holder='Bruno Nova <brunomb.nova@gmail.com>' \
         --msgid-bugs-address='https://github.com/brunonova/nautilus-admin/issues' \
         -cTRANSLATORS \
         -s -o "po/nautilus-admin.pot" \
         "extension/nautilus-admin.py"