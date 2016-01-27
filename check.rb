require 'rubygems'
require 'bundler/setup'

require 'gitlab'

require './lib/GPIO.rb'


puts GPIO::up 5
