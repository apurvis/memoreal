class MemoriesController < ApplicationController
  def new
    if params[:previous_memory_id]
      @previous_memory = Memory.find(params[:previous_memory_id])
    else
      if Memory.count == 0
        @previous_memory = Memory.create(description: "The first memory")
      else
        @previous_memory = Memory.limit(1).offset(rand(Memory.count)).first
      end
    end
  end

  def create
    @memory = Memory.new(post_params)
    @memory.save

    redirect_to new_memory_path(previous_memory_id: @memory.id)
  end

  def show
    @memory = Memory.find(params[:id])
  end

  private

  def post_params
    params.require(:memory).permit(:description, :previous_memory_id)
  end
end
