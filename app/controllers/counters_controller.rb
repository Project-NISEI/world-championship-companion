class CountersController < ApplicationController
  def show
    @counter = Counter.first_or_create!

    render json: @counter.as_json(only: [:title, :active, :time_left, :time_started])
  end

  def edit
    @counter = Counter.first_or_create!
  end

  def update
    @counter = Counter.first_or_create!

    @counter.update(params.require(:counter).permit(:title, :active, :time_left, :time_started))

    redirect_to :root
  end
end
