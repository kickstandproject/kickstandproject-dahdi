# == Class: dahdi::server::init
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
class dahdi::server::init {
  include dahdi::server::install
  include dahdi::server::config
  include dahdi::server::service

  if ($dahdi::server::monitor) {
    include dahdi::server::monitor
  }

  File {
    group => $dahdi::params::group,
    mode  => $dahdi::params::mode,
    owner => $dahdi::params::owner,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
