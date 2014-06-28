class Week < ActiveRecord::Base
  has_many :concepts

  validates :name, :presence => true
end
