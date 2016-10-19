class AccountPlatform < ActiveRecord::Base
belongs_to :account
belongs_to :platform
has_many :account_platform_report
has_many :platform_report, :through => :account_platform_report
end
