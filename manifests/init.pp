# == Class: modules
#
# Manage modulespath
#
# Requires the use of environments and hieradata.
#
#
# === Authors
#
# Author Name <sparco@hackernet.se>
#
# === Copyright
#
# Copyright 2015 Simon Skog.
#
class modules (
  $paths = undef
) {
  class { 'modules::install': }
  class { 'modules::config': }
  contain 'modules::install'
  contain 'modules::config'

  if ( $paths != undef ) {
    class { 'modules::paths': path => $paths }
  }   
}
