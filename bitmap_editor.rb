#!/usr/bin/env ruby
require "readline"
require "pry"
require "./lib/validator.rb"

Dir['./lib/**/*.rb'].each { |file| require file }

Editor.new.call
