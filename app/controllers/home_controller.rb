class HomeController < ApplicationController
  def index
    @books = Book.order(:name)

    @lastest_recommendation = Book.order(created_at: :desc).first
  end
end
