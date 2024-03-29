class JotsController < ApplicationController
  def index
    @jots = Jot.all.order(updated_at: :desc)
  end
  def new
    @jot = Jot.new
  end
  def create
    jot = Jot.create(jot_params)
    JotMailer.new_jot(jot).deliver_later
    redirect_to jots_path
  end
  private
  def jot_params
    params.require(:jot).permit(:photo)
  end
end
