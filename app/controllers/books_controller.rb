class BooksController < ApplicationController

  def index
    @books = Book.all
  end # Close index


  def show
    @book = Book.find(params[:id])
  end # Close show


  def new
    @book = Book.new
    @book.id = ""
    # @authors = Author.all
  end # Close new

  def edit
    @book = Book.find(params[:id])
  end # Close edit


  def create # POST
    @book = Book.new(book_params)
    @book.save
    redirect_to @book
    # render plain: params[:book].inspect
  end # Close create


  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end # Close update


  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end # Close destroy

  private
    def book_params
      params.require(:book).permit(:title, :description, :page_count, :author_id)
    end

end # Close class