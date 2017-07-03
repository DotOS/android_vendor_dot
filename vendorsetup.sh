for combo in $(curl -s https://raw.githubusercontent.com/DotOS/hudson/master/dot-build-targets | sed -e 's/#.*$//' | grep dot-n | awk '{printf "dot_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
