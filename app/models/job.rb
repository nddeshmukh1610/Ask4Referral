class Job < ActiveRecord::Base
	attr_accessible :title, :company, :comurl, :designation, :minsalary, :maxsalary, :minexp, :maxexp, :category_id, :location_id, :mode_id, :jtype_id, :nperiod, :gender_id, :contactperson, :contactemail, :contactno, :description, :japproval_id
	belongs_to :category
	belongs_to :location
	belongs_to :mode
	belongs_to :jtype
	belongs_to :gender
	belongs_to :japproval
	
	validates :title, presence:true
	validates :company, presence:true
	validates :comurl, presence:true
	validates :minexp, presence:true
	validates :maxexp, presence:true
	validates :contactperson, presence:true
	
	validates :location, presence:true
	validates :mode, presence:true
	validates :jtype, presence:true
	VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i	#         /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/+\z/i
	validates :contactemail, presence:true, format: { with: VALID_EMAIL_REGEX }
	validates :contactno, presence:true, numericality: true, length: {minimum:10, maximum:13}   # Need to create logic ,only number and + sign
	validates :description, presence:true
	
end
