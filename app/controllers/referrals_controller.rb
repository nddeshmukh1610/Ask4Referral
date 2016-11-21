class ReferralsController < ApplicationController



 def index
		@referrals = Referral.all
	end
	
	def new 
		@referral = Referral.new
		@category = Category.all	
		@japproval = Japproval.new
			
	end
	
	def create
		@referral = Referral.new(referral_params)
		
		#@job.japproval_id ||= "1"	# To set the default value of japproval_id as pending
		#@job.gender_id="3" if @job.gender_id.blank?

		if @referral.save
			redirect_to jobs_path, :notice => "Your referral has been noted successfully,Please wait for the call from employer"
		else
		    render "new"
		end
	end

		
	def show
		@referral = Referral.find(params[:id])
	end
	
	
  private

    def referral_params
      params.require(:referral).permit(:fname, :lname, :company, :comurl, :designation, :currsalary, :expsalary, :exp, :location_id, :mode_id, :jtype_id, :nperiod, :gender_id, :contactemail, :contactno, :resume, :attachment, :jobid)
    end
end

