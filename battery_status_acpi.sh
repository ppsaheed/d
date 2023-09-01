sudo apt-get install acpi

battery_info=$(acpi -b)
if [[ $battery_info == *"Discharging"* ]]; then
    echo "Unplugged"
else
    echo "Plugged in"
fi
