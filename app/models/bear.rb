class Bear < ActiveRecord::Base
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :cost, :numericality => true
  validates :country, :presence => true
  validates :description, :presence => true
  validates :forte, :presence => true
end
