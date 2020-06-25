class KeywordsController < ApplicationController
  before_action :find_kw, only: [ :show, :destroy ]
  def index
    @keywords = Keyword.all
    @keyword = Keyword.new
  end

  def show
  end

  def create
    @keyword = Keyword.new(keyword_params)
    if @keyword.save
      redirect_to keywords_path
    else
      render :new
    end
  end

  def destroy
    @keyword.destroy
    redirect_to keywords_path
  end

  private

  def keyword_params
    params.require(:keyword).permit(:word)
  end

  def find_kw
    @keyword = Keyword.find(params[:id])
  end
end
