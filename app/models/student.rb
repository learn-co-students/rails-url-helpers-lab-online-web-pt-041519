class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def make_active
    update active: !active
  end
  
end