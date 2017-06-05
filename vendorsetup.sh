if [ -z ${variant} ]; then
  export variant="userdebug";
fi

for combo in $(ls vendor/aosp/products/jdc_*.mk | sed -e 's/vendor\/aosp\/products\///' -e "s/.mk/-$variant/")
do
add_lunch_combo ${combo}
done
