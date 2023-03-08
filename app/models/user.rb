class User < ApplicationRecord

  has_many :reviews
  
  def full_name
    "#{first_name}, #{last_name}"
  end
end
