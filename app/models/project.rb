class Project < ActiveRecord::Base
  attr_accessible :description, :duration, :name, :status
  	validates :name, :presence => true,
  				     :uniqueness => true

  	validates :description, :length => {
  		:minimum => 5,
  		:maximum => 250}

  	validates :duration, :presence => true
  	validates :status, :presence => true
  	
  has_many :comments, :dependent => :destroy	
end
