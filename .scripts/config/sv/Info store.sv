#!/bin/bash

address="~/Desktop/Code/Work/Navegam/Info_Navegam_Frontend"
command_prefix="npm --prefix"
command_suffix="run dev"

#urxvt -title 'myServer' -e sh -c "$command_prefix $address $command_suffix"

#npm --prefix ~/Desktop/Code/Work/Navegam/Info_Navegam_Frontend run dev

$(cd ~/Desktop/Code/Work/Navegam/Info_Navegam_Frontend ;npx vue-cli-service serve --port 3000 --host 0.0.0.0)
