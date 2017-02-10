class Bear < ActiveRecord::Base
  validates :name, :presence => true
end
