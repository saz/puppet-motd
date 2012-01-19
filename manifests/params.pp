class motd::params {
  case $::operatingsystem {
    ubuntu, debian: {
      $config_file = '/etc/motd'
      $template = 'locales/motd.erb'
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }
}
