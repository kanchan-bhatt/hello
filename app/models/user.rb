class User < ApplicationRecord
has_secure_password
has_many :Microposts
validates :name , :presence => true ,:length => {:minimum => 4}
validates :password ,:presence => true ,:length => {:minimum => 4}


def self.ex(tabs)
	binding.pry
	@tab=User.where(:email => "kanchan@gmail.com")
	@tab= @tab.to_a
end
end
