class AuthorsController < ApplicationController
  helper_method :params
  def show
    @author = Author.find(params[:id])
  end
end
