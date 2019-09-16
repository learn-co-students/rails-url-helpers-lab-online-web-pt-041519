class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_reader 
    @status = ""
    if self.active
      @status = "active"
    else 
      @status = "inactive"
    end     
  end  

end