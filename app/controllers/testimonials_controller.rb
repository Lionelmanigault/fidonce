class TestimonialsController < ApplicationController
  def index
  	@testimonials = Testimonial.all
  	@testimonial = Testimonial.new
  end

   def create
    @testimonial = Testimonial.create(testimonial_params)

    @testimonial.save!

    # @testimonial.fname = params[:fname]
    # @testimonial.feedback = params[:feedback]
    # @testimonial.save
    
    redirect_to testimonials_path
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])
    @testimonial.destroy
    redirect_to testimonials_path, notice: "Testimonial deleted!"
  end


 private

  def testimonial_params
  	params.require(:testimonial).permit(:fname, :feedback)
  end

end
