# synology-scripts

## backup-community-packages.sh
Grabs configuration data and any database date for community packages.
Copies them to `/volume1/Backup/SynoCommunityPackages/`

## delete-eadirs.sh
Nukes annoying `@eaDirs\`

## search-io-errors.sh
saves STDERR to user's home directory in time stamped .txt
probably want to execute as: `nohup ./serach-io-errors.sh &`
