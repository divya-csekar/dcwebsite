class Album < ActiveRecord::Base
  attr_accessible :artistid, :description, :price, :title
  validates_uniqueness_of :title
end
