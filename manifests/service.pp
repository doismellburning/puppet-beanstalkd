# == Class beanstalkd::service
#
# This class is meant to be called from beanstalkd
# It ensure the service is running
#
class beanstalkd::service {
  include beanstalkd::params

  service { $beanstalkd::params::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
