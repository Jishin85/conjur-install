#!/bin/bash

set -euo pipefail

main () {
    update_yumapt
    install_docker
    generate_masterkey
    run_conjur
    sleep 8
    configure_master
    import_cert
    encrypt_keys
    issue_followers_cert
    conjur_createacct
    conjur_init
    conjur_authn
    report_info
}
