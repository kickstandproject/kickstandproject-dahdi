# == Class: dahdi::server::service
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
class dahdi::server::service {
  service { $dahdi::params::servicename:
    ensure     => running,
    enable     => true,
    hasrestart => $dahdi::params::hasrestart,
    hasstatus  => $dahdi::params::hasstatus,
    require    => Class['dahdi::server::config'],
    subscribe  => File[$dahdi::params::configfile],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79