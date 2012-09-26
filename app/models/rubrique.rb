class Rubrique < ActiveRecord::Base
    attr_accessible :description, :name
    validates :name, :presence => true
    validates :description, :presence => true
    self.per_page = 10
end
