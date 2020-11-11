#!/bin/bash

# First we append the saved layout of worspace N to workspace M
i3-msg "workspace 10; append_layout ~/.config/i3/ws10.json"

# And finally we fill the containers with the programs they had
(urxvt &)
(urxvt &)
(urxvt &)
