class Account < ActiveRecord::Base
has_many :account_platform
has_many :platform , :through => :account_platform
end
