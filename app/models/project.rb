class Project < ActiveRecord::Base
  attr_accessible :description, :duration, :name, :status
end
