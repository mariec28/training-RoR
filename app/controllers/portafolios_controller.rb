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

  def edit
    @portafolio = Portafolio.find(params[:id])
  end

  def update
    @portafolio = Portafolio.find(params[:id])
    
    respond_to do |format|
        if @portafolio.update(params.require(:portafolio).permit(:title,:subtitle ,:body))
          format.html { redirect_to portafolios_path, notice: "Blog was successfully updated." }
          format.json { render :show, status: :ok, location: @portafolio}
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @blog.errors, status: :unprocessable_entity }
        end
    end
  end

  def show
    @portafolio = Portafolio.find(params[:id])
  end

  def destroy
    #Perfom the lookup
    @portafolio = Portafolio.find(params[:id])
    
    #Destroy/delete the record
    @portafolio.destroy

    #Redirect
    respond_to do |format|
      format.html { redirect_to portafolios_url, notice: "Record was successfully destroyed." }
    end
  end
  
  

end
