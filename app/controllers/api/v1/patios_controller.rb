class Api::V1::PatiosController < ApplicationController
  def index
    patios = Patio.all
    render json: patios, root: true
  end
end
