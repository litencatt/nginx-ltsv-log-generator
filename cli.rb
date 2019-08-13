require 'bundler/setup'
require './ltsv'

LogGenerator.generate(nil, MyGen.new)
