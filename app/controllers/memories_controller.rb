class MemoriesController < ApplicationController
  def new
    puts "index params #{params}"
    if params[:previous_memory_id]
      puts "had a previous memory"
      @previous_memory = Memory.find(params[:previous_memory_id])
    else
      puts "random memory"
      if Memory.count == 0
        @previous_memory = Memory.create(description: "The first memory")
      else
        @previous_memory = Memory.limit(1).offset(rand(Memory.count)).first
      end
    end
  end

  def create
    puts "create params: #{params}"
    @memory = Memory.new(params[:memory])
#    @memory.previous_memory_id = params[:previous_memory_id]
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
