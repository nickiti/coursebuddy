class Dashboard < ApplicationRecord
    has_many :courses
    has_many :notes
    belongs_to :user
    has_many :assignments, :through => :health_concerns, dependent: :destroy
      
      
end
