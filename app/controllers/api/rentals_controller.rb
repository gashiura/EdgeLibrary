class Api::RentalsController < ApplicationController

  def index
    @rentals = RentalDecorator.decorate_collection(
      Rental.where(user_id: params[:user_id], return_date: nil)
    )
    render 'index', formats: 'json', handlers: 'jbuilder'
  end

end