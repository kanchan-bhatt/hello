class Report < ApplicationRecord
has_many :platform_report
has_many :platform , :through => :platform_report

end
