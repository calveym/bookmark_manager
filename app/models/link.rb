require "data_mapper"


class Link
  include DataMapper::Resource

  property :id, Serial
  property :url, String
  property :title, String

end

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test")
DataMapper.finalize
DataMapper.auto_upgrade!