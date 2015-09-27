for APP in $(defaults read ~/Library/Preferences/com.apple.dock.plist persistent-apps | grep bundle-identifier | awk '{print $3}' | tr -d '";')	
do
	echo $APP
done
