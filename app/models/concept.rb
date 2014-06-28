class Concept < ActiveRecord::Base
  belongs_to :week
  has_many :votes
end
