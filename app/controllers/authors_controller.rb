class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
    @authors = Author.all

  if !params[:author].blank?
    @posts = Post.where(author: params[:author])
    elsif !params[:date].blank?
      if params[:date] == "Today"
        @posts = Post.where("created_at >=?", Time.zone.today.beginning_of_day)
      else
        @posts = Post.where("created_at <?", Time.zone.today.beginning_of_day)
      end
    else
  end
end
