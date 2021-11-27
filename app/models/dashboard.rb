class Dashboard < ApplicationRecord
    has_many :courses
    has_many :notes
    belongs_to :user
end
