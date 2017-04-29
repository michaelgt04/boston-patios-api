class Api::V1::PatiosController < ApplicationController
  def index
    patios = Patio.all
    render json: patios, root: true
  end

  def show
    patio = Patio.find(params[:id])
    render json: patio, root: true
  end
end
