class PlatformReport < ApplicationRecord
belongs_to :platform
belongs_to :report
has_many :account_platform_report
has_many :account_platform , :through => :account_platform_report
end
