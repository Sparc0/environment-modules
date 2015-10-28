# Create modulepath file.
#
#
# Requires the use of environments and hieradata.
# Requires Hiera YAML backend.
#
#
class modules::config {
        concat { '/etc/environment-modules/modulespath':
                ensure => 'present',
                owner  => 'root',
                group  => 'root',
                mode   => '0644',
        }
}
