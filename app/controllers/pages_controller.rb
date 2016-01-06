class PagesController < ApplicationController

  def checkout
    @request = Request.new()
    # @request.build_location

    @grade = 5
    @subjects = ['English Language', 'Arts', 'General Support']
    @start_time = Date.today + 8.hours
    @duration = 60 #minutes

    @next_ten_years = (2016..2026).to_a
    @months = (1..12).to_a

    flash[:notice] = 'Welcome to checkout page'
  end

  def process_checkout
    @request = Request.new(request_params)
    if @request.save
      # launch the modal
    else
      flash[:error] = 'Checkout Failed'
    end
    redirect_to :back
  end

  def process_card
    begin
      if params[:number].present?
        render json: {message: "card charged"}
      else
        raise("no number in params")
      end
    rescue StandardError => e
      render json: {error: e.message}, status: 400
    end
  end

  private

  def request_params
    params.require(:request).permit(:name, :comment,
                          location_attributes: [:style, :address_1, :request_id])
  end

end
