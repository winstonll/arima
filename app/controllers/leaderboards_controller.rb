class LeaderboardsController < ApplicationController
	include ValidationHelper

	layout "application_fluid"

	def index
    # Determine all locations for filtering
    @countries = Location.select(:country_code).distinct.collect { |loc| loc.country_code }

    # Use as a base for location filtering and user rank
    @registered_users = User.get_ranked_users

    if @countries.find { |c| c == params[:country_type] }
      @ranked_registered_users = @registered_users.where('locations.country_code' => params[:country_type])[0...50]
    else
      @ranked_registered_users = @registered_users[0...50]
    end

		#@user_rank = @user_rank = current_user.get_user_rank

	  respond_to do |format|
	    format.html
	    format.js
	  end
	end
end
