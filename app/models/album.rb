class Album < ActiveRecord::Base
  attr_accessible :artistid, :description, :price, :title
  default_scope :order => 'title'
  #has_many :line_items
  #before_destroy :ensure_not_referenced_by_any_line_item
  validates :title, :description, :price, :artistid, :presence => true
  validates :title, :uniqueness => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.99}

  #def ensure_not_referenced_by_any_line_item
  #  if line_items.count.zero?
  #    return true
  #  else
  #    errors.add(:base, 'Line Items present')
  #    return false
  #  end
  #end
end
