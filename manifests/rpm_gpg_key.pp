class perconarepo::rpm_gpg_key {

  file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-Percona":
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/perconarepo/RPM-GPG-KEY-Percona",
  }

  exec {  "import-perconarepo-gpgkey":
    path      => '/bin:/usr/bin:/sbin:/usr/sbin',
    command   => "rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-Percona",
    unless    => "rpm -q gpg-pubkey-$(echo $(gpg --throw-keyids --keyid-format short < /etc/pki/rpm-gpg/RPM-GPG-KEY-Percona) | cut --characters=11-18 | tr '[A-Z]' '[a-z]')",
    require   => File['/etc/pki/rpm-gpg/RPM-GPG-KEY-Percona'],
    logoutput => 'on_failure',
  }
}
