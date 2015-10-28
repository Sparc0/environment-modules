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
                target  => '/etc/environment-modules/modulespath',
                content => "${path} \n",
                order   => $order,
        }
}
