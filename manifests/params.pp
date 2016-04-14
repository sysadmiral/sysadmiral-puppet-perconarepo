# lint:ignore:80chars
# Optional parameters in setting up the percona repo
class perconarepo::params {
  # Setting to 'absent' will fall back to the yum.conf
  # Setting proxy here will be the default for all repos.
  #
  #  If you wish to set a proxy for an individual set of repos,
  #   you can declare $proxy in that class, and should scope to
  #   the most specific declaration of proxy.
  $proxy = 'absent'
  $gpgkey = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-Percona'

  $perconareleasebasearch_baseurl       = 'https://repo.percona.com/release/$releasever/RPMS/$basearch'
  $perconareleasebasearch_proxy         = $proxy
  $perconareleasebasearch_enabled       = '1'
  $perconareleasebasearch_gpgcheck      = '1'
  $perconareleasebasearch_descr         = 'Percona-Release YUM repository - $basearch'
  $perconareleasebasearch_gpgkey        = $gpgkey

  $perconareleasenoarch_baseurl         = 'https://repo.percona.com/release/$releasever/RPMS/noarch'
  $perconareleasenoarch_proxy           = $proxy
  $perconareleasenoarch_enabled         = '1'
  $perconareleasenoarch_gpgcheck        = '1'
  $perconareleasenoarch_descr           = 'Percona-Release YUM repository - noarch'
  $perconareleasenoarch_gpgkey          = $gpgkey

  $perconareleasesource_baseurl         = 'https://repo.percona.com/release/$releasever/SRPMS'
  $perconareleasesource_proxy           = $proxy
  $perconareleasesource_enabled         = '1'
  $perconareleasesource_gpgcheck        = '1'
  $perconareleasesource_descr           = 'Percona-Release YUM repository - Source packages'
  $perconareleasesource_gpgkey          = $gpgkey

  $perconatestingbasearch_baseurl       = 'https://repo.percona.com/testing/$releasever/RPMS/$basearch'
  $perconatestingbasearch_proxy         = $proxy
  $perconatestingbasearch_enabled       = '0'
  $perconatestingbasearch_gpgcheck      = '1'
  $perconatestingbasearch_descr         = 'Percona-Testing YUM repository - $basearch'
  $perconatestingbasearch_gpgkey        = $gpgkey

  $perconatestingnoarch_baseurl         = 'https://repo.percona.com/testing/$releasever/RPMS/noarch'
  $perconatestingnoarch_proxy           = $proxy
  $perconatestingnoarch_enabled         = '0'
  $perconatestingnoarch_gpgcheck        = '1'
  $perconatestingnoarch_descr           = 'Percona-Testing YUM repository - noarch'
  $perconatestingnoarch_gpgkey          = $gpgkey

  $perconatestingsource_baseurl         = 'https://repo.percona.com/testing/$releasever/SRPMS'
  $perconatestingsource_proxy           = $proxy
  $perconatestingsource_enabled         = '0'
  $perconatestingsource_gpgcheck        = '1'
  $perconatestingsource_descr           = 'Percona-Testing YUM repository - Source packages'
  $perconatestingsource_gpgkey          = $gpgkey

  $perconaexperimentalbasearch_baseurl  = 'https://repo.percona.com/experimental/$releasever/RPMS/$basearch'
  $perconaexperimentalbasearch_proxy    = $proxy
  $perconaexperimentalbasearch_enabled  = '0'
  $perconaexperimentalbasearch_gpgcheck = '1'
  $perconaexperimentalbasearch_descr    = 'Percona-Experimental YUM repository - $basearch'
  $perconaexperimentalbasearch_gpgkey   = $gpgkey

  $perconaexperimentalnoarch_baseurl    = 'https://repo.percona.com/experimental/$releasever/RPMS/noarch'
  $perconaexperimentalnoarch_proxy      = $proxy
  $perconaexperimentalnoarch_enabled    = '0'
  $perconaexperimentalnoarch_gpgcheck   = '1'
  $perconaexperimentalnoarch_descr      = 'Percona-Experimental YUM repository - noarch'
  $perconaexperimentalnoarch_gpgkey     = $gpgkey

  $perconaexperimentalsource_baseurl    = 'https://repo.percona.com/experimental/$releasever/SRPMS'
  $perconaexperimentalsource_proxy      = $proxy
  $perconaexperimentalsource_enabled    = '0'
  $perconaexperimentalsource_gpgcheck   = '1'
  $perconaexperimentalsource_descr      = 'Percona-Experimental YUM repository - Source packages'
  $perconaexperimentalsource_gpgkey     = $gpgkey

}
# lint:endignore
