# Create modulepath file.
#
#
# Requires the use of environments and hieradata.
# Requires Hiera YAML backend.
#
#
class modulefile {
  $modulefile = $modulepath

  case $::osfamily {
    'Debian': {
      modulepath {'/usr/share/modules/init/.modulespath':}
    }
    'Ubuntu': {
      modulepath {'/etc/environment-modules/modulespath':}
    }
  }
}

class modules::config {
  concat { '$modulefile':
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    }
}
