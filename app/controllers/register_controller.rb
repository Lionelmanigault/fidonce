class RegisterController < ApplicationController

   before_action :authenticate_admin!, only: [:list]
  
    def index
  	
  	@subscriber = Subscriber.new
  end

   def create
    @subscriber = Subscriber.create(subscriber_params)

    @subscriber.save!

    # @testimonial.email = params[:email]
    # @testimonial.feedback = params[:feedback]
    # @testimonial.save
    
    redirect_to register_index_path
  end

  def list
      @subscribers = Subscriber.all
  end


 private

  def subscriber_params
  	params.require(:subscriber).permit(:email, :lname, :fname)
  end

end
