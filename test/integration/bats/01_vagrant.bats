#!/usr/bin/env bats

@test "vagrant is executable" {
    run vagrant list-commands
    [ "$status" -eq 0 ]
}

@test "vagrant is the version specified" {
    if [ "$(echo "vagrant_version: $(vagrant version | head -n1 | sed 's/Installed Version: //')")" == "vagrant_version: 1.9.5" ]; then
        status=0
    else
        status=1
    fi
    [ "$status" -eq 0 ]
}
