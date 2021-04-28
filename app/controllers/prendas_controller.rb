class PrendasController < ApplicationController
  def index
    @prendas = Prenda.all
  end

  def show
  end
end
