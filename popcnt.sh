# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

popcnt() {
    local x="$1"
    local c=0
    while [ $x -ne 0 ]; do
        if [ $(($x & 1)) -eq 1 ]; then
            c=$(($c + 1))
        fi
        x=$(($x >> 1))
    done
    echo $c
}

popcnt 1
popcnt 2
popcnt 3
popcnt 512
popcnt 511
