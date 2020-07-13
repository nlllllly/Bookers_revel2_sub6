class BooksController < ApplicationController
  def index

  end
  def create
    @book_new = Book.new(book_new_params)
    @book_new.user_id = current_user.id
    @book_new.save
    redirect_to book_path(@book_new.id)
  end


  private
    def book_new_params
      params.require(:book).permit(:title, :body, :user_id)
    end

  
end
