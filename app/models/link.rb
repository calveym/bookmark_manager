require "data_mapper"


class Link
  include DataMapper::Resource

  property :id, Serial
  property :url, String
  property :title, String

end

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!