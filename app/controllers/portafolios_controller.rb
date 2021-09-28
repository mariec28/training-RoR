class PortafoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
  def index
    #@portfolio_items = Portafolio.where(subtitle:'Ruby on Rails')
    #@portfolio_items = Portafolio.ruby_on_rails_portfolio_items
    @portfolio_items = Portafolio.all
  end

  def angular
    @angular_portfolio_items = Portafolio.angular
  end

  def new
    @portafolio = Portafolio.new
    3.times { @portafolio.tecnologies.build  }

  end
  
  # POST /blogs or /blogs.json
  def create
    @portafolio = Portafolio.new(portafolio_params)

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
  end

  def update
    
    respond_to do |format|
        if @portafolio.update(portafolios_params)
          format.html { redirect_to portafolios_path, notice: "Blog was successfully updated." }
          format.json { render :show, status: :ok, location: @portafolio}
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @blog.errors, status: :unprocessable_entity }
        end
    end
  end

  def show
    binding.pry
  end

  def destroy
    #Perfom the lookup
    
    #Destroy/delete the record
    @portafolio.destroy

    #Redirect
    respond_to do |format|
      format.html { redirect_to portafolios_url, notice: "Record was successfully destroyed." }
    end
  end
  
  private  
  def portafolio_params
    params.require(:portafolio).permit(:title,
                                       :subtitle,
                                       :body,
                                       tecnologies_attributes: [:name]
                                       )
  end

  def set_portfolio_item
    @portafolio = Portafolio.find(params[:id])
  end
  

end
