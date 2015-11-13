# Define modulepath content
#
#
# Parameters
#
# [modulepath]
#  Folder where module files are located.
#
# [order]
#  Order in which entries will appear in modulepath file.
#
#
define modules::path (
 $path,
 $order,
) {

  concat::fragment { "modulepath":
    target  => '$modulefile',
    content => "${path} \n",
    order   => $order,
    }

  file { $modulefile:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
	content => template(modules/modulepath.erb)
	}  
}
