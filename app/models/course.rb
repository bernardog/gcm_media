class Course < ActiveRecord::Base
  before_save :update_status

  enum status: %w(approved disapproved retake)

  def get_avarage
    (self.first_unity + self.second_unity + self.third_unity)/3.0
  end

  def update_status
    if get_avarage < 3.0
      self.status = 'disapproved'
    elsif get_avarage < 5.0
      self.status = 'retake'
    else
      self.status = 'approved'
    end
  end

end
