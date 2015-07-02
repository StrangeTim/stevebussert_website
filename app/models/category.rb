class Category < ActiveRecord::Base
  has_many :repositories, :dependent => :destroy

  validates :name, :presence => true
end
