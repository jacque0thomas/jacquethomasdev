class BlurbsController < ApplicationController
  def index
  end

  def show
    @blurb = Blurb.find(params[:id])
  end

  def new
    @blurb = Blurb.new
  end

  def create 
    @blurb = Blurb.new(blurb_params)

    if @blurb.save 
      redirect_to @blurb
    else
      render :new
    end
  end

  def edit 
    @blurb = Blurb.find(params[:id])
  end

  def update
    @blurb = Blurb.find(params[:id])

    if @blurb.update(blurb_params)
      redirect_to @blurb
    else
      render :edit
    end
  end

  def destroy 
    @blurb = Blurb.find(params[:id])
    @blurb.destroy

    redirect_to root_path
  end


  private
    def blurb_params
      params.require(:blurb).permit(:title, :body)
    end
end
