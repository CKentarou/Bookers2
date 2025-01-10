class BooksController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @books = Book.all  # すべてのユーザーの投稿を取得
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
