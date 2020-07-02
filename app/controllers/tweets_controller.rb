class TweetsController < ApplicationController
  def destroy
    @tweet = Tweet.find(params[:id])
    @keyword = Keyword.find_by(id: @tweet.keyword_id)
    @tweet.destroy
    redirect_to keyword_path(@keyword)
  end
end
