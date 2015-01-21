#!/bin/sh

# modified by k-f-

# Backup script for different packages
# Works with the packages from www.synocommunity.com and www.mdevries.org
# This script is created by www.mdevries.org

AUTOSUB="/usr/local/autosub"
COUCHPOTATO="/usr/local/couchpotato/var"
COUCHPOTATOSERVER="/usr/local/couchpotatoserver/var"
COUCHPOTATOSERVERCUSTOM="/usr/local/couchpotatoserver-custom/var"
HEADPHONES="/usr/local/headphones/var"
MARASCHINO="/usr/local/maraschino/var"
NZBGET="/usr/local/nzbget/var"
OSCAM="/usr/local/oscam/var"
PPSCRIPTS="/volume1/PPScripts"
SABNZBD="/usr/local/sabnzbd/var"
SABNZBDCUSTOM="/usr/local/sabnzbd-custom/var"
SICKBEARD="/usr/local/sickbeard/var"
SICKBEARDCUSTOM="/usr/local/sickbeard-custom/var"
SUBLIMINAL="/usr/local/subliminal/var"
TRANSMISSION="/usr/local/transmission/var"
TVHEADEND="/usr/local/tvheadend/var"
UMURMUR="/usr/local/umurmur/var"
ZNC="/usr/local/znc/var"

BACKUP="/volume1/Backup"
USER="kef:users"

autosub_backup ()
{
    if [ -d ${AUTOSUB} ] 
    then
        mkdir -p ${BACKUP}/AutoSub
        cp ${AUTOSUB}/config.properties ${BACKUP}/AutoSub
        cp ${AUTOSUB}/database.db ${BACKUP}/AutoSub
        cp ${AUTOSUB}/ExamplePostProcess.py ${BACKUP}/AutoSub
        chown -R ${USER} ${BACKUP}/AutoSub
    else
            return 1
    fi
}

couchpotato_backup ()
{
    if [ -d ${COUCHPOTATO} ] 
    then
        mkdir -p ${BACKUP}/CouchPotato
        cp ${COUCHPOTATO}/config.ini ${BACKUP}/CouchPotato
        cp ${COUCHPOTATO}/data.db ${BACKUP}/CouchPotato
        chown -R ${USER} ${BACKUP}/CouchPotato
        else
            return 1
    fi
}

couchpotatoserver_backup ()
{
    if [ -d ${COUCHPOTATOSERVER} ] 
    then
        mkdir -p ${BACKUP}/CouchPotatoServer
        cp ${COUCHPOTATOSERVER}/settings.conf ${BACKUP}/CouchPotatoServer
        cp ${COUCHPOTATOSERVER}/couchpotato.db ${BACKUP}/CouchPotatoServer
        chown -R ${USER} ${BACKUP}/CouchPotatoServer
        else
            return 1
    fi
}

couchpotatoservercustom_backup ()
{
    if [ -d ${COUCHPOTATOSERVER} ] 
    then
        mkdir -p ${BACKUP}/CouchPotatoServerCustom
        cp ${COUCHPOTATOSERVERCUSTOM}/settings.conf ${BACKUP}/CouchPotatoServerCustom
        cp ${COUCHPOTATOSERVERCUSTOM}/couchpotato.db ${BACKUP}/CouchPotatoServerCustom
        chown -R ${USER} ${BACKUP}/CouchPotatoServerCustom
        else
            return 1
    fi
}

headphones_backup ()
{
    if [ -d ${HEADPHONES} ] 
    then
        mkdir -p ${BACKUP}/Headphones
        cp ${HEADPHONES}/config.ini ${BACKUP}/Headphones
        cp ${HEADPHONES}/headphones.db ${BACKUP}/Headphones
        chown -R ${USER} ${BACKUP}/Headphones
        else
            return 1
    fi
}

maraschino_backup ()
{
    if [ -d ${MARASCHINO} ] 
    then
        mkdir -p ${BACKUP}/Maraschino
        cp ${MARASCHINO}/maraschino.db ${BACKUP}/Maraschino
        chown -R ${USER} ${BACKUP}/Maraschino
    else
            return 1
    fi
}


nzbget_backup ()
{
    if [ -d ${NZBGET} ] 
    then
        mkdir -p ${BACKUP}/NZBGet
        cp ${NZBGET}/nzbget.conf ${BACKUP}/NZBGet
        cp ${NZBGET}/postprocess.conf ${BACKUP}/NZBGet
        cp ${NZBGET}/settings.php ${BACKUP}/NZBGet
        chown -R ${USER} ${BACKUP}/NZBGet
        else
            return 1
    fi
}

oscam_backup ()
{
    if [ -d ${OSCAM} ] 
    then
        mkdir -p ${BACKUP}/OSCam
        cp ${OSCAM}/oscam.conf ${BACKUP}/OSCam
        chown -R ${USER} ${BACKUP}/OSCam
        else
            return 1
    fi
}

ppscripts_backup ()
{
    if [ -d ${PPSCRIPTS} ] 
    then
        mkdir -p ${BACKUP}/PPScripts
        cp -r ${PPSCRIPTS}/* ${BACKUP}/PPScripts
        chown -R ${USER} ${BACKUP}/PPScripts
        else
            return 1
    fi
}

sabnzbd_backup ()
{
    if [ -d ${SABNZBD} ] 
    then
        mkdir -p ${BACKUP}/SABnzbd
        cp ${SABNZBD}/config.ini ${BACKUP}/SABnzbd
        cp ${SABNZBD}/admin/sabnzbd.crt ${BACKUP}/SABnzbd
        cp ${SABNZBD}/admin/sabnzbd.key ${BACKUP}/SABnzbd
        chown -R ${USER} ${BACKUP}/SABnzbd
        else
            return 1
    fi
}

sabnzbdcustom_backup ()
{
    if [ -d ${SABNZBDCUSTOM} ] 
    then
        mkdir -p ${BACKUP}/SABnzbdCustom
        cp ${SABNZBDCUSTOM}/config.ini ${BACKUP}/SABnzbdCustom
        cp ${SABNZBDCUSTOM}/admin/sabnzbd.crt ${BACKUP}/SABnzbdCustom
        cp ${SABNZBDCUSTOM}/admin/sabnzbd.key ${BACKUP}/SABnzbdCustom
        chown -R ${USER} ${BACKUP}/SABnzbdCustom
        else
            return 1
    fi
}

sickbeard_backup ()
{
    if [ -d ${SICKBEARD} ] 
    then
        mkdir -p ${BACKUP}/SickBeard
        cp ${SICKBEARD}/config.ini ${BACKUP}/SickBeard
        cp ${SICKBEARD}/sickbeard.db ${BACKUP}/SickBeard
        chown -R ${USER} ${BACKUP}/SickBeard
        else
            return 1
    fi
}

sickbeardcustom_backup ()
{
    if [ -d ${SICKBEARDCUSTOM} ] 
    then
        mkdir -p ${BACKUP}/SickBeardCustom
        cp ${SICKBEARDCUSTOM}/config.ini ${BACKUP}/SickBeardCustom
        cp ${SICKBEARDCUSTOM}/sickbeard.db ${BACKUP}/SickBeardCustom
        chown -R ${USER} ${BACKUP}/SickBeardCustom
        else
            return 1
    fi
}

subliminal_backup ()
{
    if [ -d ${SUBLIMINAL} ] 
    then
        mkdir -p ${BACKUP}/Subliminal
        cp ${SUBLIMINAL}/config.ini ${BACKUP}/Subliminal
        cp ${SUBLIMINAL}/subliminal.db ${BACKUP}/Subliminal
        chown -R ${USER} ${BACKUP}/Subliminal
        else
            return 1
    fi
}

transmission_backup ()
{
    if [ -d ${TRANSMISSION} ] 
    then
        mkdir -p ${BACKUP}/Transmission
        cp ${TRANSMISSION}/settings.json ${BACKUP}/Transmission
        chown -R ${USER} ${BACKUP}/Transmission
        else
            return 1
    fi
}

tvheadend_backup ()
{
    if [ -d ${TVHEADEND} ] 
    then
        mkdir -p ${BACKUP}/Tvheadend
        cp -r ${TVHEADEND}/* ${BACKUP}/Tvheadend
        rm ${BACKUP}/Tvheadend/tvheadend.pid
        chown -R ${USER} ${BACKUP}/Tvheadend
    else
        return 1
    fi
}

umurmur_backup ()
{
    if [ -d ${UMURMUR} ] 
    then
        mkdir -p ${BACKUP}/uMurmur
        cp ${UMURMUR}/umurmur.conf ${BACKUP}/uMurmur
        chown -R ${USER} ${BACKUP}/uMurmur
        else
            return 1
    fi
}

znc_backup ()
{
    if [ -d ${ZNC} ] 
    then
        mkdir -p ${BACKUP}/ZNC
        cp ${ZNC}/configs/znc.conf ${BACKUP}/ZNC
        cp ${ZNC}/znc.pem ${BACKUP}/ZNC
        chown -R ${USER} ${BACKUP}/ZNC
        else
            return 1
    fi
}

case $1 in
    autosub)
    if autosub_backup; then
        echo Backup AutoSub ...
        autosub_backup
    else
        echo AutoSub not found ...
                exit 0
        fi
        ;;

    couchpotato)
    if couchpotato_backup; then
        echo Backup CouchPotato ...
        couchpotato_backup
    else
        echo CouchPotato not found ...
                exit 0
        fi
        ;;

    couchpotatoserver)
    if couchpotatoserver_backup; then
        echo Backup CouchPotato Server ...
        couchpotatoserver_backup
    else
        echo CouchPotato Server not found ...
                exit 0
        fi
        ;;

    couchpotatoservercustom)
    if couchpotatoservercustom_backup; then
        echo Backup CouchPotato Server - Custom ...
        couchpotatoservercustom_backup
    else
        echo CouchPotato Server - Custom not found ...
                exit 0
        fi
        ;;


    headphones)
    if headphones_backup; then
        echo Backup Headphones ...
        headphones_backup
    else
        echo Headphones not found ...
                exit 0
        fi
        ;;

    maraschino)
    if maraschino_backup; then
        echo Backup Maraschino ...
        maraschino_backup
    else
        echo Maraschino not found ...
                exit 0
        fi
        ;;

    nzbget)
    if nzbget_backup; then
        echo Backup NZBGet ...
        nzbget_backup
    else
        echo NZBGet not found ...
                exit 0
        fi
        ;;

    oscam)
    if oscam_backup; then
        echo Backup OSCam ...
        oscam_backup
    else
        echo OSCam not found ...
        exit 0
    fi
    ;;

    ppscripts)
    if ppscripts_backup; then
        echo Backup Post-Processing Scripts ...
        ppscripts_backup
    else
        echo Post-Processing Scripts not found ...
                exit 0
        fi
        ;;

    sabnzbdcustom)
    if sabnzbdcustom_backup; then
        echo Backup SABnzbd - Custom ...
        sabnzbdcustom_backup
    else
        echo SABnzbd - Custom not found ...
                exit 0
        fi
        ;;

    sabnzbd)
    if sabnzbd_backup; then
        echo Backup SABnzbd ...
        sabnzbd_backup
    else
        echo SABnzbd not found ...
                exit 0
        fi
        ;;

    sickbeard)
    if sickbeard_backup; then
        echo Backup SickBeard ...
        sickbeard_backup
    else
        echo SickBeard not found ...
                exit 0
        fi
        ;;

    sickbeardcustom)
    if sickbeardcustom_backup; then
        echo Backup SickBeard - Custom ...
        sickbeardcustom_backup
    else
        echo SickBeard - Custom not found ...
                exit 0
        fi
        ;;


    subliminal)
    if subliminal_backup; then
        echo Backup Subliminal ...
        subliminal_backup
    else
        echo Subliminal not found ...
                exit 0
        fi
        ;;

    transmission)
    if transmission_backup; then
        echo Backup Transmission ...
        transmission_backup
    else
        echo Transmission not found ...
        exit 0
    fi
    ;;

    tvheadend)
    if tvheadend_backup; then
        echo Backup Tvheadend ...
        tvheadend_backup
    else
        echo Tvheadend not found ...
        exit 0
    fi
    ;;

    umurmur)
    if umurmur_backup; then
        echo Backup uMurmur ...
        umurmur_backup
    else
        echo uMurmur not found ...
        exit 0
    fi
    ;;

    znc)
    if znc_backup; then
        echo Backup ZNC ...
        znc_backup
    else
        echo ZNC not found ...
                exit 0
        fi
        ;;

    all)
    if autosub_backup; then
        echo Backup AutoSub ...
        autosub_backup
    else
        echo AutoSub not found ...
    fi

    if couchpotato_backup; then
        echo Backup CouchPotato ...
        couchpotato_backup
    else
        echo CouchPotato not found ...
    fi

    if couchpotatoserver_backup; then
        echo Backup CouchPotato Server ...
        couchpotatoserver_backup
    else
        echo CouchPotato Server not found ...
    fi

    if headphones_backup; then
        echo Backup Headphones ...
        headphones_backup
    else
        echo Headphones not found ...
    fi

    if maraschino_backup; then
        echo Backup Maraschino ...
        maraschino_backup
    else
        echo Maraschino not found ...
    fi

    if nzbget_backup; then
        echo Backup NZBGet ...
        nzbget_backup
    else
        echo NZBGet not found ...
    fi

    if oscam_backup; then
        echo Backup OSCam ...
        oscam_backup
    else
        echo OSCam not found ...
    fi

    if sabnzbd_backup; then
        echo Backup SABnzbd ...
        sabnzbd_backup
    else
        echo SABnzbd not found ...
    fi

    if sickbeard_backup; then
        echo Backup SickBeard ...
        sickbeard_backup
    else
        echo SickBeard not found ...
    fi

    if subliminal_backup; then
        echo Backup Subliminal ...
        subliminal_backup
    else
        echo Subliminal not found ...
    fi

    if transmission_backup; then
        echo Backup Transmission ...
        transmission_backup
    else
        echo Transmission not found ...
    fi

    if tvheadend_backup; then
        echo Backup Tvheadend ...
        tvheadend_backup
    else
        echo Tvheadend not found ...
    fi

    if umurmur_backup; then
        echo Backup uMurmur ...
        umurmur_backup
    else
        echo uMurmur not found ...
    fi

    if znc_backup; then
        echo Backup ZNC ...
        znc_backup
    else
        echo ZNC not found ...
    fi
    ;;

*)
    echo "Usage: $0 [all|autosub|couchpotato|couchpotatoserver|couchpotatoservercustom|headphones|maraschino|nzbget|oscam|sabnzbd|sabnzbdcustom|sickbeard|sickbeardcustom|subliminal|transmission|tvheadend|umurmur|znc]"
    exit 1
    ;;
esac
