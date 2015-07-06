class Task < ActiveRecord::Base

  validates :body, presence: true

  def complete!
    self.update(completed_at: Time.now)
  end

end
