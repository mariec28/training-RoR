class PortafoliosController < ApplicationController
  
  def index
    @portfolio_items = Portafolio.all
  end

  def new
    @portafolio = Portafolio.new
  end
  
  # POST /blogs or /blogs.json
  def create
    @portafolio = Portafolio.new(params.require(:portafolio).permit(:title,:subtitle ,:body))

    respond_to do |format|
      if @portafolio.save
        format.html { redirect_to portafolios_path, notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @portafolio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portafolio.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
