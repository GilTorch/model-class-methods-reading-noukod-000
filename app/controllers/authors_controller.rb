class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
    @authors = Author.all

  if !params[:author].blank?
    @posts = Post.by_author(params[:author])
    elsif !params[:date].blank?
      if params[:date] == "Today"
        @posts = Post.from_today
      else
        @posts = Post.old_news
      end
    else
      @posts=Post.all
  end
end
