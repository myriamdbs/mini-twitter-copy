class TweetsController < ApplicationController
  def create
    @keyword = Keyword.find(params[:keyword_id])
    TweetcallJob.perform_now(@keyword)
    redirect_to keyword_path(@keyword)
  end
end
