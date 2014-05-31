class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def new
  end

  def create
    @book = Book.new(permitted_params)
    @book.save
  end

  private
  def permitted_params
    params.require(:book).permit(:name, :edition)
  end
end
