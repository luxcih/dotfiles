function __wakatime --on-event fish_postexec
    wakatime --write --entity-type app --project "Terminal" --entity (echo $history[1] | cut -d " " -f1) 2>&1 > /dev/null&
    disown $last_pid
end
