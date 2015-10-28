# Ensures that environment-modules is installed.

class modules::install {
        package {
          ensure => installed
        }
        case $::osfamily {
          'Debian', 'Ubuntu': {
            package { 'environment-modules': }
           }
           default: {
             fail("${::operatingsystem} not supported.")
           }
        }       
               
}
