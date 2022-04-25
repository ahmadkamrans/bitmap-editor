require 'rspec'
require 'pry'
require "readline"
require "./lib/validator.rb"
Dir['./lib/**/*.rb'].each { |file| require file }
