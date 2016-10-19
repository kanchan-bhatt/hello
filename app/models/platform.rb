class Platform < ActiveRecord::Base
has_many :account_platform
has_many :account , :through => :account_platform
has_many :platform_report
has_many :report , :through => :platform_report
end
