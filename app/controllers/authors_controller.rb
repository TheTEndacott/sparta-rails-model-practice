class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end # Close index


  def show
    @author = Author.find(params[:id])
  end # Close show


  def new
    @author = Author.new
    @author.id = ""
  end # Close new

  def edit
    @author = Author.find(params[:id])
  end # Close edit


  def create # POST
    @author = Author.new(author_params)
    @author.save
    redirect_to @author
  end # Close create


  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to @author
    else
      render 'edit'
    end
  end # Close update


  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to authors_path
  end # Close destroy

  private
    def author_params
      params.require(:author).permit(:first_name, :last_name)
    end

end
