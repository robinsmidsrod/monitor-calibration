# Monitor calibration for Linux/X11

* Are you a photographer or graphic designer?
* Do you own a hardware calibration device?
* Do you find it hard to understand how to calibrate your monitor in Linux?

If you can answer yes to all of these questions, then this script should
definitely be useful for you.

## How to do it in Ubuntu 10.04 and up

* Download the script calibrate-lcd.sh and make it executable (chmod +x
  calibrate-lcd.sh)
* Ensure that the gnome-color-manager and argyll packages are installed
  (sudo aptitude install gnome-color-manager argyll)
* Run gcm-dump-edid to get the name of your display (if you care)
* Run ./calibrate-lcd.sh "model-name-of-your-monitor"
* Follow the instructions on connecting your calibration device and let it
  create your profile (.icc file)
* Go to System->Preferences->Color Profiles and apply the generated profile
  to your display

Now you can use color managed software and do color-sensitive work in Linux.

Yay!

# Notes

The script calibrates your monitor to 6500K, Gamma 2.2 and a brightness of
120 cd/cm2.  If you want other values, edit the script and change the
values.  It couldn't be simpler.

# Contact

Robin Smidsrød <robin@smidsrod.no>
