class Course < ActiveRecord::Base
  before_save :update_status

  enum status: ["aprovado", "reprovado", "em recuperação"]

  def get_avarage
    (self.first_unity + self.second_unity + self.third_unity)/3.0
  end

  def update_status
    if get_avarage < 3.0
      self.status = 'reprovado'
    elsif get_avarage < 5.0
      self.status = 'em recuperação'
    else
      self.status = 'aprovado'
    end
  end

end
