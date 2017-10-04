class ReviewsController < ApplicationController
  #http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  def create
    @position = Position.find(params[:position_id])
    @review = @position.reviews.create(review_params)
    redirect_to position_path(@position)
  end

  def destroy
    @position = Position.find(params[:position_id])
    @review = @position.reviews.find(params[:id])
    @review.destroy
    redirect_to position_path(@position)
  end

  private
    def review_params
      params.require(:review).permit(:comment, :rating)
    end

end
