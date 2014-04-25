# == Class beanstalkd::install
#
class beanstalkd::install {
  include beanstalkd::params

  package { $beanstalkd::params::package_name:
    ensure => present,
  }
}
