killall -q polybar

export BAR_SEP=" %{F$color1}%{F-} "

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar -l info --reload left 2>/dev/null &
done
