require 'dm-migrations'
require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper::Logger.new($stdout, :debug)

class Link
  include DataMapper::Resource

  attr_reader :id, :url, :title

  property :id, Serial
  property :url, String
  property :title, String
end


DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
