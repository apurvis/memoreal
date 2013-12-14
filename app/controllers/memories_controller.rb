class MemoriesController < ApplicationController
  def new
    @previous_memory = Memory.limit(1).offset(rand(Memory.count)).first
  end

  def create
    @memory = Memory.new(params[:memory])
    @memory.save

    redirect_to @memory
  end

  def show
    @memory = Memory.find(params[:id])
  end

  private

  def post_params
    params.require(:memory).permit(:description)
  end
end
