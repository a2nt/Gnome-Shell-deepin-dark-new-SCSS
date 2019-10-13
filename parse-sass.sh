#! /bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t compact"

echo Generating the gnome-shell css ...

sassc $SASSC_OPT ./gnome-shell/src/gnome-shell.scss ./gnome-shell/gnome-shell.css

echo Generating the gtk-3.0 css...

sassc $SASSC_OPT ./gtk-3.0/src/gtk.scss ./gtk-3.0/gtk-light.css
sassc $SASSC_OPT ./gtk-3.0/src/gtk-dark.scss ./gtk-3.0/gtk.css

echo Generating cinnamon css ...

sassc $SASSC_OPT ./cinnamon/src/cinnamon.scss ./cinnamon/cinnamon.css

