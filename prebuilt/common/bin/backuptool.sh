#!/sbin/sh
S=/system
B=/tmp/backupdir
case "$1" in
	backup)
		if [ ! -f $S/build.prop ]; then
			mount $S
			MOUNTED=1
		fi
		if [ -e $S/app/SetupWizard.apk ]; then
			GEXISTS=1
		fi
		if [ GEXISTS -eq 1 ]; then
			rm -rf $B
			mkdir -p $B/etc/permissions
			mkdir $B/app
			mkdir $B/framework
			mkdir $B/lib
			while read line; do
				cp $S/$line $B/$line
			done <<-EOF
				app/BooksPhone.apk
				app/CarHomeGoogle.apk
				app/FOTAKill.apk
				app/GenieWidget.apk
				app/GoogleBackupTransport.apk
				app/GoogleCalendarSyncAdapter.apk
				app/GoogleContactsSyncAdapter.apk
				app/GoogleFeedback.apk
				app/GooglePartnerSetup.apk
				app/GoogleQuickSearchBox.apk
				app/GoogleServicesFramework.apk
				app/LatinImeTutorial.apk
				app/MarketUpdater.apk
				app/MediaUploader.apk
				app/NetworkLocation.apk
				app/OneTimeInitializer.apk
				app/SetupWizard.apk
				app/Talk.apk
				app/Vending.apk
				etc/permissions/com.google.android.maps.xml
				etc/permissions/features.xml
				framework/com.google.android.maps.jar
				lib/libvoicesearch.so
			EOF
		fi
		if [ MOUNTED -eq 1 ]; then
			umount $S
		fi
		;;
	recover)
		if [ ! -f $S/build.prop ]; then
			mount $S
			MOUNTED=1
		fi
		if [ -e $B/app/SetupWizard.apk ]; then
			BEXISTS=1
		fi
		if [ BEXISTS -eq 1 ]; then
			cp -R $B/app/ $S/app/
			cp -R $B/etc/permissions/ $S/etc/permissions/
			cp -R $B/framework/ $S/framework/
			cp -R $B/lib/ $S/lib/
			rm -rf $B
		fi
		if [ MOUNTED -eq 1 ]; then
			umount $S
		fi
esac
