class Album < ActiveRecord::Base
  attr_accessible :artistid, :description, :price, :title
  validates :title, :description, :price, :artistid, :presence => true
  validates :title, :uniqueness => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.99}
end
