# Class: modules::paths
#
class modules::paths ( $path ){
        create_resources('modules::path', $path)
}
