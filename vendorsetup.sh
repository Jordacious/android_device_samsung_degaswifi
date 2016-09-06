# Get proprietary prebuilts it they aren't present yet
if [ ! -d vendor/cm/prebuilt ]; then
	sh vendor/cm/get-prebuilts
fi

add_lunch_combo cm_degaswifi-userdebug
add_lunch_combo cm_degaswifi-eng
