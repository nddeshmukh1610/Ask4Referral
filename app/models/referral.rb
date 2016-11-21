class Referral < ActiveRecord::Base
    attr_accessible :fname, :lname, :company, :comurl, :designation, :currsalary, :expsalary, :exp, :location_id, :mode_id, :jtype_id, :nperiod, :gender_id, :contactemail, :contactno, :resume, :attachment, :jobid
    #belongs_to :location
    #belongs_to :mode
    #belongs_to :jtype
    #belongs_to :gender

	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
	
    validates :resume, presence: true # Make sure the owner's name is present.
 
 
    
end
