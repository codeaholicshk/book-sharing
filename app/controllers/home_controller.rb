class HomeController < ApplicationController
  def index
    @books = Book.order(:name)
  end
end
