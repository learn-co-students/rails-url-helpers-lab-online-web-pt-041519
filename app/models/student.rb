class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_message
    self.active ? "This student is currently active." : "This student is currently inactive."
  end

  def toggle_active
    self.active == true ? self.update(active: false) : self.update(active: true)
  end
end
