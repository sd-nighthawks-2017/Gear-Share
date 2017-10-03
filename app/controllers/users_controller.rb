class UsersController < ApplicationController

  ## GET all staff
  def index
    @users = User.all
    @items = []
  end

## GET new user member form
  def new
    @user = User.new
    redirect_to new_user_session_path
  end

## POST newly created user member
  def create
    @user = User.create(params[:user])
    redirect_to
  end

## GET a specific user member
  def show
    @user = User.find(params[:id])
    @items = Item.where(user_id: @user.id)
    @reviews = Review.where(user_id: @user.id)
  end

## GET a form for editing the user member
  def edit
    @user = User.find(params[:id])
  end

## PUT any edits made to the user member
  def update
    @user = User.update(params[:user])
  end

## Delete a user member from the database
  def delete
    @user = User.find(params[:id])
  end
end
