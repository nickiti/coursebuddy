class Assignment < ApplicationRecord
  belongs_to :course
  
  validates :status, inclusion: { in: ['not-started','in-progress','complete']}
  
  STATUS_OPTIONS = [
    ['Not Started','not-started'],
    ['In Progress','in-progress'],
    ['Complete','complete']
  ]
  
  def count_time 
    starting = Process.clock.gettime(Process::CLOCK_MONOTONIC)
    ending = Process.clock.gettime(Process::CLOCK_MONOTONIC)
    elapsed = ending - starting
  end
  
end
