class motd::params {
    case $operatingsystem {
        /(Ubuntu|Debian)/: {
            $motd_file = '/etc/motd'
        }
    }
}
