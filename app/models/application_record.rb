# Super class for the other model classes 
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
