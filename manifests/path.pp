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
        $modulepath,
        $order,
) {


        concat::fragment { "modules::fragment preamble ${path}":
                ensure  => present
                target  => '/etc/environment-modules/modulespath',
                content => "${modulepath} \n",
                order   => $order,
        }
