class motd::params {
  case $::osfamily {
    'AIX': {
      $config_file = '/etc/motd'
      $template = 'motd/motd.erb'
    }
      redhat, debian, suse, gentoo : {
      $config_file = '/etc/motd'
      $template = 'motd/motd.erb'
    }
    default: {
      case $::operatingsystem {
        'AIX': {
          $config_file = '/etc/motd'
          $template = 'motd/motd.erb'
        }
        gentoo: {
          $config_file = '/etc/motd'
          $template = 'motd/motd.erb'
        }
        default: {
          fail("The ${module_name} module is not supported on ${::osfamily}/${::operatingsystem}.")
        }
      }
    }
  }
}
