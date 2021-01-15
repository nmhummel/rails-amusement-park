class RidesController < ApplicationController

    def new
        #@ride = Ride.new
    end

    def create
        @ride = Ride.create(ride_params)
        # redirect_to @ride.user, alert: @ride.take_ride
         
        message = @ride.take_ride
        redirect_to @ride.user, flash: { message: message }
    end


    def edit
        redirect_to ride_path
    end
    
    private
    def ride_params
        params.require(:ride).permit(:user_id, :attraction_id)
    end

end
