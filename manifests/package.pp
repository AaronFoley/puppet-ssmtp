class ssmtp::package {

    package { $ssmtp::package_name:
        ensure => installed
    }

}