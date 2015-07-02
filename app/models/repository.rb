class Repository < ActiveRecord::Base
  belongs_to :category

  validates :repo_name, :presence => true
  validates :repo_url, :presence => true
  validates :description, :presence => true
end
