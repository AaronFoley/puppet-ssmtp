class ssmtp (
    $ssmtp_conf,
    $revaliases_conf,
    $package_name,
    $root,
    $mail_hub,
    $rewrite_domain,
    $hostname,
    $from_line_override,
    $usetls,
    $usestarttls,
    $authuser,
    $authpass,
    $authmethod
) {

    contain ssmtp::package
    contain ssmtp::config

    Class['ssmtp::package'] -> Class['ssmtp::config']

}