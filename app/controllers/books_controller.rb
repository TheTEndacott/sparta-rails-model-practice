class BooksController < ApplicationController

  def index
    @books = Book.all
  end # Close index

  def show
    id = params[:id].to_i
    @book = Book.find(id)
  end # Close show

  def new
  end # Close new

  def create
  end # Close create

  def edit
  end # Close edit

  def update
  end # Close update

  def destroy
  end # Close destroy

end # Close class