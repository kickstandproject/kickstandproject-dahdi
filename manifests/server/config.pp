# == Class: dahdi::server::config
#
# === Authors
#
# Paul Belanger <paul.belanger@polybeacon.com>
#
# === Copyright
#
# Copyright (C) 2012, PolyBeacon, Inc.
#
# This program is free software, distributed under the terms
# of the Apache License, Version 2.0. See the LICENSE file at
# the top of the source tree.
#
class dahdi::server::config {
  file { $dahdi::params::basedir:
    ensure  => directory,
    force   => true,
    notify  => Class['dahdi::server::service'],
    purge   => true,
    recurse => true,
    require => Class['dahdi::server::install'],
  }

  file { "${dahdi::params::basedir}/modules":
    ensure  => file,
    content => template('dahdi/etc/dahdi/modules.erb'),
    notify  => Class['dahdi::server::service'],
    require => File[$dahdi::params::basedir],
  }

  file { $dahdi::params::configfile:
    ensure  => file,
    content => template('dahdi/etc/dahdi/system.conf.erb'),
    notify  => Class['dahdi::server::service'],
    require => File[$dahdi::params::basedir],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
