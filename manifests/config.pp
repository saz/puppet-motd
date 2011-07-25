class motd::config {
    file { $motd::params::motd_file:
        ensure  => file,
        content => template("${module_name}/motd.erb"),
        owner   => root,
        group   => root,
    }
}
