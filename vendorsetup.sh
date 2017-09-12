for combo in $(curl -s https://raw.githubusercontent.com/DotOS/android_vendor_dot/dot-n/dot.devices | sed -e 's/#.*$//' | awk '{printf "dot_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
