class Note < ApplicationRecord
    belongs_to :user, class_name: 'User'
    
  class << self
    def search(query)
      rel = order("id")
      if query.present?
        rel = rel.where("title LIKE?", "%#{query}%")
      end
      rel
    end
  end
    
end

