# perconarepo

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with perconarepo](#setup)
    * [What perconarepo affects](#what-perconarepo-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with perconarepo](#beginning-with-perconarepo)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Use this module to install the percona yum repo on supported Redhat based machines.

This will import the percona GPG key and then install the percona yum repos. The following repositories are added and enabled by default:

percona-release-basearch
percona-release-noarch
percona-release-source

The following repositories are added but disabled by default:

percona-testing-basearch
percona-testing-noarch
percona-testing-source
percona-experimental-basearch
percona-experimental-noarch
percona-experimental-source

## Setup

### Beginning with perconarepo

The simplest way to use this module is to: `include perconarepo`

## Usage

I find it helpful to use the stages included in stdlib like below:

```puppet
class { 'perconarepo: stage => setup }
```

This makes sure your repos are setup before anything tries to use them.

### Puppetfile users

Add the following to your Puppetfile:

```puppet
# Third Party Modules
mod 'sysadmiral/perconarepo',
  :git => 'https://github.com/sysadmiral/sysadmiral-puppet-perconarepo.git',
  :tag => '1.0.0'
```

### Proxy

If you have an http proxy required to access the internet, you can use either a class parameter in the perconarepo class, or edit the $proxy variable in the params.pp file. By default no proxy is assumed.

## Limitations

I have only tested this on CentOS 7 and Debian Jessie (to make sure it didn't get applied).

In theory it should work with any Redhat/RPM/Yum based OS.

## Development

This module is free for anyone to use and if you spot any improvements please feel free to submit a Pull Request.

## Release Notes/Contributors/Etc.

This is the first module I wrote so I kept it fairly simple.

I took heavy inspiration for this module from https://github.com/stahnma/puppet-module-epel because I found that to be extremely useful.
