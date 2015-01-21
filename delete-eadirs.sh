# If you ever turned on the Synology Media Center
# and ran Indexing it put an @eaDir/ in every folder and subfolder.

### If you just want to see if it created any run
###     find . -name "@eaDir" -type d -print 2> /dev/null |while read FILENAME; do rm -rf "${FILENAME}"; done
### instead

# Delete every @eaDir with this script.  Prints to STDOUT when it locates one.
find . -name "@eaDir" -type d -print 2> /dev/null |while read FILENAME; do rm -rf "${FILENAME}"; done
