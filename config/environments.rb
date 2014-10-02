require 'active_record'
require 'active_record_tasks'
require_relative '../lib/rps_tournament.rb'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'rps_tournament'
)