class Course < ApplicationRecord
  has_many :assignments
  belongs_to :user
  
   class << self
    def search(query)
      rel = order("id")
      if query.present?
        rel = rel.where("name LIKE?", "%#{query}%")
      end
      rel
    end
  end
  
end


