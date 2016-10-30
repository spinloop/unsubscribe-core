class Contact < ActiveRecord::Base
  validates :email, email: true, presence: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
