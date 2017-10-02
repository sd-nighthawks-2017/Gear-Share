class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @user = User.find(params[:user_id])
    @review.reviewer_id = current_user.id
    @review.user_id = @user.id


      if @review.save
        redirect_to user_path(@user.id)
      else
        render 'new'
      end

  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @user = User.find(params[:user_id])
      if @review.update(review_params)
        redirect_to user_path(@user.id)
      else
        render 'edit'
      end
  end

  def destroy
    @review = Review.find(params[:id])
    @user = User.find(params[:user_id])
      if @review.destroy
        redirect_to user_path(@user.id)
      else
        redirect_to user_path(@user.id)
      end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :rating)
  end
end
