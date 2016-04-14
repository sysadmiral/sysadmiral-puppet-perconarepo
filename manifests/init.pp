# lint:ignore:80chars lint:ignore:class_inherits_from_params_class
# Class perconarepo
#
# Actions:
#   Configure the proper repositories and import GPG keys
#
# Requires:
#   You should probably be on an Enterprise Linux variant. (Centos, RHEL,
#   Scientific, Oracle, Ascendos, et al)
#
# Sample Usage:
#  include perconarepo
#
class perconarepo (
  $perconareleasebasearch_baseurl        =  $perconarepo::params::perconareleasebasearch_baseurl,
  $perconareleasebasearch_proxy          =  $perconarepo::params::perconareleasebasearch_proxy,
  $perconareleasebasearch_enabled        =  $perconarepo::params::perconareleasebasearch_enabled,
  $perconareleasebasearch_gpgcheck       =  $perconarepo::params::perconareleasebasearch_gpgcheck,
  $perconareleasebasearch_descr          =  $perconarepo::params::perconareleasebasearch_descr,
  $perconareleasebasearch_gpgkey         =  $perconarepo::params::perconareleasebasearch_gpgkey,
  $perconareleasenoarch_baseurl          =  $perconarepo::params::perconareleasenoarch_baseurl,
  $perconareleasenoarch_proxy            =  $perconarepo::params::perconareleasenoarch_proxy,
  $perconareleasenoarch_enabled          =  $perconarepo::params::perconareleasenoarch_enabled,
  $perconareleasenoarch_gpgcheck         =  $perconarepo::params::perconareleasenoarch_gpgcheck,
  $perconareleasenoarch_descr            =  $perconarepo::params::perconareleasenoarch_descr,
  $perconareleasenoarch_gpgkey           =  $perconarepo::params::perconareleasenoarch_gpgkey,
  $perconareleasesource_baseurl          =  $perconarepo::params::perconareleasesource_baseurl,
  $perconareleasesource_proxy            =  $perconarepo::params::perconareleasesource_proxy,
  $perconareleasesource_enabled          =  $perconarepo::params::perconareleasesource_enabled,
  $perconareleasesource_gpgcheck         =  $perconarepo::params::perconareleasesource_gpgcheck,
  $perconareleasesource_descr            =  $perconarepo::params::perconareleasesource_descr,
  $perconareleasesource_gpgkey           =  $perconarepo::params::perconareleasesource_gpgkey,
  $perconatestingbasearch_baseurl        =  $perconarepo::params::perconatestingbasearch_baseurl,
  $perconatestingbasearch_proxy          =  $perconarepo::params::perconatestingbasearch_proxy,
  $perconatestingbasearch_enabled        =  $perconarepo::params::perconatestingbasearch_enabled,
  $perconatestingbasearch_gpgcheck       =  $perconarepo::params::perconatestingbasearch_gpgcheck,
  $perconatestingbasearch_descr          =  $perconarepo::params::perconatestingbasearch_descr,
  $perconatestingbasearch_gpgkey         =  $perconarepo::params::perconatestingbasearch_gpgkey,
  $perconatestingnoarch_baseurl          =  $perconarepo::params::perconatestingnoarch_baseurl,
  $perconatestingnoarch_proxy            =  $perconarepo::params::perconatestingnoarch_proxy,
  $perconatestingnoarch_enabled          =  $perconarepo::params::perconatestingnoarch_enabled,
  $perconatestingnoarch_gpgcheck         =  $perconarepo::params::perconatestingnoarch_gpgcheck,
  $perconatestingnoarch_descr            =  $perconarepo::params::perconatestingnoarch_descr,
  $perconatestingnoarch_gpgkey           =  $perconarepo::params::perconatestingnoarch_gpgkey,
  $perconatestingsource_baseurl          =  $perconarepo::params::perconatestingsource_baseurl,
  $perconatestingsource_proxy            =  $perconarepo::params::perconatestingsource_proxy,
  $perconatestingsource_enabled          =  $perconarepo::params::perconatestingsource_enabled,
  $perconatestingsource_gpgcheck         =  $perconarepo::params::perconatestingsource_gpgcheck,
  $perconatestingsource_descr            =  $perconarepo::params::perconatestingsource_descr,
  $perconatestingsource_gpgkey           =  $perconarepo::params::perconatestingsource_gpgkey,
  $perconaexperimentalbasearch_baseurl   =  $perconarepo::params::perconaexperimentalbasearch_baseurl,
  $perconaexperimentalbasearch_proxy     =  $perconarepo::params::perconaexperimentalbasearch_proxy,
  $perconaexperimentalbasearch_enabled   =  $perconarepo::params::perconaexperimentalbasearch_enabled,
  $perconaexperimentalbasearch_gpgcheck  =  $perconarepo::params::perconaexperimentalbasearch_gpgcheck,
  $perconaexperimentalbasearch_descr     =  $perconarepo::params::perconaexperimentalbasearch_descr,
  $perconaexperimentalbasearch_gpgkey    =  $perconarepo::params::perconaexperimentalbasearch_gpgkey,
  $perconaexperimentalnoarch_baseurl     =  $perconarepo::params::perconaexperimentalnoarch_baseurl,
  $perconaexperimentalnoarch_proxy       =  $perconarepo::params::perconaexperimentalnoarch_proxy,
  $perconaexperimentalnoarch_enabled     =  $perconarepo::params::perconaexperimentalnoarch_enabled,
  $perconaexperimentalnoarch_gpgcheck    =  $perconarepo::params::perconaexperimentalnoarch_gpgcheck,
  $perconaexperimentalnoarch_descr       =  $perconarepo::params::perconaexperimentalnoarch_descr,
  $perconaexperimentalnoarch_gpgkey      =  $perconarepo::params::perconaexperimentalnoarch_gpgkey,
  $perconaexperimentalsource_baseurl     =  $perconarepo::params::perconaexperimentalsource_baseurl,
  $perconaexperimentalsource_proxy       =  $perconarepo::params::perconaexperimentalsource_proxy,
  $perconaexperimentalsource_enabled     =  $perconarepo::params::perconaexperimentalsource_enabled,
  $perconaexperimentalsource_gpgcheck    =  $perconarepo::params::perconaexperimentalsource_gpgcheck,
  $perconaexperimentalsource_descr       =  $perconarepo::params::perconaexperimentalsource_descr,
  $perconaexperimentalsource_gpgkey      =  $perconarepo::params::perconaexperimentalsource_gpgkey,
) inherits perconarepo::params {

  if $facts['::osfamily'] == 'RedHat' {

    class {'::perconarepo::rpm_gpg_key':
      before => Yumrepo['percona-release-basearch','percona-release-noarch','percona-release-source','percona-testing-basearch','percona-testing-noarch','percona-testing-source','percona-experimental-basearch','percona-experimental-noarch','percona-experimental-source']
    }

    file { '/etc/yum.repos.d/percona-release.repo':
      ensure => absent
    }

    yumrepo { 'percona-release-basearch':
    baseurl  => $perconareleasebasearch_baseurl,
    proxy    => $perconareleasebasearch_proxy,
    enabled  => $perconareleasebasearch_enabled,
    gpgcheck => $perconareleasebasearch_gpgcheck,
    gpgkey   => $perconareleasebasearch_gpgkey,
    descr    => $perconareleasebasearch_descr,
    }

    yumrepo { 'percona-release-noarch':
    baseurl  => $perconareleasenoarch_baseurl,
    proxy    => $perconareleasenoarch_proxy,
    enabled  => $perconareleasenoarch_enabled,
    gpgcheck => $perconareleasenoarch_gpgcheck,
    gpgkey   => $perconareleasenoarch_gpgkey,
    descr    => $perconareleasenoarch_descr,
    }

    yumrepo { 'percona-release-source':
    baseurl  => $perconareleasesource_baseurl,
    proxy    => $perconareleasesource_proxy,
    enabled  => $perconareleasesource_enabled,
    gpgcheck => $perconareleasesource_gpgcheck,
    gpgkey   => $perconareleasesource_gpgkey,
    descr    => $perconareleasesource_descr,
    }

    yumrepo { 'percona-testing-basearch':
    baseurl  => $perconatestingbasearch_baseurl,
    proxy    => $perconatestingbasearch_proxy,
    enabled  => $perconatestingbasearch_enabled,
    gpgcheck => $perconatestingbasearch_gpgcheck,
    gpgkey   => $perconatestingbasearch_gpgkey,
    descr    => $perconatestingbasearch_descr,
    }

    yumrepo { 'percona-testing-noarch':
    baseurl  => $perconatestingnoarch_baseurl,
    proxy    => $perconatestingnoarch_proxy,
    enabled  => $perconatestingnoarch_enabled,
    gpgcheck => $perconatestingnoarch_gpgcheck,
    gpgkey   => $perconatestingnoarch_gpgkey,
    descr    => $perconatestingnoarch_descr,
    }

    yumrepo { 'percona-testing-source':
    baseurl  => $perconatestingsource_baseurl,
    proxy    => $perconatestingsource_proxy,
    enabled  => $perconatestingsource_enabled,
    gpgcheck => $perconatestingsource_gpgcheck,
    gpgkey   => $perconatestingsource_gpgkey,
    descr    => $perconatestingsource_descr,
    }

    yumrepo { 'percona-experimental-basearch':
    baseurl  => $perconaexperimentalbasearch_baseurl,
    proxy    => $perconaexperimentalbasearch_proxy,
    enabled  => $perconaexperimentalbasearch_enabled,
    gpgcheck => $perconaexperimentalbasearch_gpgcheck,
    gpgkey   => $perconaexperimentalbasearch_gpgkey,
    descr    => $perconaexperimentalbasearch_descr,
    }

    yumrepo { 'percona-experimental-noarch':
    baseurl  => $perconaexperimentalnoarch_baseurl,
    proxy    => $perconaexperimentalnoarch_proxy,
    enabled  => $perconaexperimentalnoarch_enabled,
    gpgcheck => $perconaexperimentalnoarch_gpgcheck,
    gpgkey   => $perconaexperimentalnoarch_gpgkey,
    descr    => $perconaexperimentalnoarch_descr,
    }

    yumrepo { 'percona-experimental-source':
    baseurl  => $perconaexperimentalsource_baseurl,
    proxy    => $perconaexperimentalsource_proxy,
    enabled  => $perconaexperimentalsource_enabled,
    gpgcheck => $perconaexperimentalsource_gpgcheck,
    gpgkey   => $perconaexperimentalsource_gpgkey,
    descr    => $perconaexperimentalsource_descr,
    }

  } else {
    notice ("Your operating system ${::operatingsystem} will not have the perconarepo repository applied")
  }
}
# lint:endignore
