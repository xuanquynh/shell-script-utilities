#!/usr/bin/env bash
# Userland mode (~$USER/), (~/).

# ~/.fonts is now deprecated and that
#FONT_HOME=~/.fonts
# ~/.local/share/fonts should be used instead
FONT_HOME=~/.local/share/fonts

if [ -d $FONT_HOME/adobe-fonts/source-code-pro ]
then
    echo "Directory $FONT_HOME/adobe-fonts/source-code-pro already exists."
else
    echo "installing fonts at $PWD to $FONT_HOME"

    mkdir -p "$FONT_HOME/adobe-fonts/source-code-pro"
    # find "$FONT_HOME" -iname '*.ttf' -exec echo '{}' \;

    (git clone \
    --branch release \
    --depth 1 \
    'https://github.com/adobe-fonts/source-code-pro.git' \
    "$FONT_HOME/adobe-fonts/source-code-pro" && \
    fc-cache -f -v "$FONT_HOME/adobe-fonts/source-code-pro")
fi