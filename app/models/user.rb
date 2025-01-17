class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides


  def mood

    if !self.happiness.nil? && !self.happiness.nil?
      if self.happiness > self.nausea
        "happy"
      elsif self.happiness < self.nausea
        "sad"
      else
        "equal"
      end
    end
  end
end
