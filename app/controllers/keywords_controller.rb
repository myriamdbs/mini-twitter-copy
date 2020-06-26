class KeywordsController < ApplicationController
  before_action :find_kw, only: [:show, :destroy, :refresh_tweet]

  def index
    @keywords = Keyword.all
    @keyword = Keyword.new
  end

  def show

  end

  def create
    @keyword = Keyword.new(keyword_params)
    if @keyword.save
      TweetcallJob.perform_now(@keyword)
      redirect_to keywords_path
    else
      render :new
    end
  end

  def destroy
    @keyword.destroy
    redirect_to keywords_path
  end

  def refresh_tweet
    TweetcallJob.perform_now(@keyword)
  end

  private

  def keyword_params
    params.require(:keyword).permit(:word)
  end

  def find_kw
    @keyword = Keyword.find(params[:id])
  end
end
