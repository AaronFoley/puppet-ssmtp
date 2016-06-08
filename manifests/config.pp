class ssmtp::config {

    $root               = $ssmtp::root
    $mail_hub           = $ssmtp::mail_hub
    $from_line_override = $ssmtp::from_line_override
    $hostname           = $ssmtp::hostname
    $rewrite_domain     = $ssmtp::rewrite_domain
    $authuser           = $ssmtp::authuser
    $authpass           = $ssmtp::authpass
    $authmethod         = $ssmtp::authmethod
    $usetls             = $ssmtp::usetls
    $usestarttls        = $ssmtp::usestarttls

    file { $ssmtp::ssmtp_conf:
            ensure  => file,
            mode    => '0640',
            owner   => 'root',
            group   => 'mail',
            path    => $ssmtp::ssmtp_conf,
            content => template('ssmtp/ssmtp.conf.erb')
    }

    # file {
    #     $ssmtp::revaliases_conf:
    #         ensure  => file,
    #         mode    => '0640',
    #         owner   => 'root',
    #         group   => 'mail',
    #         path    => $ssmtp::ssmtp_conf,
    #         content => template('ssmtp.conf')
    # }

}