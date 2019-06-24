#!/usr/bin/env ruby

APP_ROOT = File.dirname(__FILE__)
$LOAD_PATH.unshift(File.join(APP_ROOT, 'lib'))

require 'log.rb'
require 'pry'
Log.call
