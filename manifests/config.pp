# == Class beanstalkd::config
#
# This class is called from beanstalkd
#
class beanstalkd::config {
  file {
    '/etc/default/beanstalkd':
      content => template('beanstalkd/default/beanstalkd.erb'),
  }
}
