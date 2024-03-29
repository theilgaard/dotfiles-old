#!/bin/sh
# Copyright (C) 2014 Julien Bonjean <julien@bonjean.info>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

CARD="${1:-0}"
MIXER="${2:-default}" # use pulse for pulseaudio, default is alsa
SCONTROL="${3:-Master}"

case $BLOCK_BUTTON in
  3) amixer -q sset $SCONTROL toggle ;; # right click, mute/unmute
  4) amixer -q sset $SCONTROL 1%+ ;;    # scroll up, increase
  5) amixer -q sset $SCONTROL 1%- ;;    # scroll down, decrease
esac

volume () {
  amixer -c $CARD -M -D $MIXER get $SCONTROL
}

format () {
  perl -ne 'if (/\[(\d+%)\].*\[(on|off)\]/) {CORE::say $2 eq "off" ? " X  " : "$1"; exit}'
}

volume | format

