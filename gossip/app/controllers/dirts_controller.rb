class DirtsController < ApplicationController
  def index
    @dirts = Dirt.all
  end

  def new
  end

  def show
  end
end
