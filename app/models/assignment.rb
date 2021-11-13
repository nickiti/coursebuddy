class Assignment < ApplicationRecord
  belongs_to :course
  
  validates :status, inclusion: { in: ['not-started','in-progress','complete']}
  
  STATUS_OPTIONS = [
    ['Not Started','not-started'],
    ['In Progress','in-progress'],
    ['Complete','complete']
  ]
end
