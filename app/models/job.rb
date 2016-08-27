class Job < ActiveRecord::Base
	attr_accessible :title, :company, :comurl, :designation, :minsalary, :maxsalary, :minexp, :maxexp, :category_id, :location_id, :mode_id, :jtype_id, :nperiod, :gender_id, :contactperson, :contactemail, :contactno, :description
	belongs_to :category
	belongs_to :location
	belongs_to :mode
	belongs_to :jtype
	belongs_to :gender
end
