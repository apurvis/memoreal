class MemoriesController < ApplicationController
  def new
  end

  def create
    render text: params[:memory].inspect
  end
end
