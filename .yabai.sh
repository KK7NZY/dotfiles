#!/bin/bash
function reinstallsa(){
    sudo yabai --uninstall-sa
    sudo yabai --install-sa
    sudo yabai --load-sa
}
sudo yabai --load-sa || reinstallsa
yabai -m space --create
echo space created.....
