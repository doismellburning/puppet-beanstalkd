# == Class beanstalkd::params
#
# This class is meant to be called from beanstalkd
# It sets variables according to platform
#
class beanstalkd::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'beanstalkd'
      $service_name = 'beanstalkd'
    }
    'RedHat', 'Amazon': {
      $package_name = 'beanstalkd'
      $service_name = 'beanstalkd'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
  $address = '0.0.0.0'
  $port = 11300
}
