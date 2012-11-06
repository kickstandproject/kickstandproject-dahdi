# == Class: dahdi::server
#
# This class manages the DAHDI server
#
# === Parameters
#
# [*monitor*]
#
# [*settings*]
#
# === Variables
#
# === Examples
#
#  class { 'dahdi::server': }
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
class dahdi::server(
  $modules = [],
  $monitor = false,
  $settings = {},
) {
  $defaults = {
    'loadzone'    => 'us',
    'defaultzone' => 'us',
    'spans'       => {},
  }
  $settings_real = merge($defaults, $settings)

  include dahdi::params
  include dahdi::server::init
}

# vim:sw=2:ts=2:expandtab:textwidth=79
