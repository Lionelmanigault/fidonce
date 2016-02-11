class SubscribersController < ApplicationController

    def index
  	@subscribers = Subscriber.all
  	@subscriber = Subscriber.new
  end

   def create
    @subscriber = Subscriber.create(subscriber_params)

    @subscriber.save!

    # @testimonial.email = params[:email]
    # @testimonial.feedback = params[:feedback]
    # @testimonial.save
    
    redirect_to register_thankyou_path
  end


 private

  def subscriber_params
  	params.require(:subscriber).permit(:email, :lname, :fname)
  end

end
