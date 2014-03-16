class AbvCalculatorController < ApplicationController
  def index
    @abv = Abv.new
  end
  
  def calculate
    @abv = Abv.new()
    @abv.update(abv_params[:og].to_f, abv_params[:fg].to_f)
  end
  
  def abv_params
    params.
      require(:abv).
      symbolize_keys
  end
end