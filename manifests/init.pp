# == Class: beanstalkd
#
# Full description of class beanstalkd here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class beanstalkd (
) inherits beanstalkd::params {

  # validate parameters here

  anchor { 'beanstalkd::begin': } ->
  class { 'beanstalkd::install': } ->
  class { 'beanstalkd::config': }
  class { 'beanstalkd::service': } ->
  anchor { 'beanstalkd::end': }

  Anchor['beanstalkd::begin']  ~> Class['beanstalkd::service']
  Class['beanstalkd::install'] ~> Class['beanstalkd::service']
  Class['beanstalkd::config']  ~> Class['beanstalkd::service']
}
