# == Class: dahdi::params
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
class dahdi::params {
  $basedir = $::operatingsystem ? {
    default => '/etc/dahdi',
  }

  $configfile = $::operatingsystem ? {
    default => '/etc/dahdi/system.conf',
  }

  $group = $::operatingsystem ? {
    default => 'root',
  }

  $hasrestart = $::operatingsystem ? {
    default => true,
  }

  $hasstatus = $::operatingsystem ? {
    default => true,
  }

  $mode = $::operatingsystem ? {
    default => '0644',
  }

  $owner = $::operatingsystem ? {
    default => 'root',
  }

  $packagename = $::operatingsystem ? {
    default => 'dahdi',
  }

  $processname = $::operatingsystem ? {
    default => 'dahdi',
  }

  $servicename = $::operatingsystem ? {
    default => 'dahdi',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
