require 'active_record'
require 'active_record_tasks'
require_relative '../lib/rps_tournament.rb'

ActivRecord::Base.establish_connection(
  :adapter => 'postresql',
  :database => 'rps_tournament'
)