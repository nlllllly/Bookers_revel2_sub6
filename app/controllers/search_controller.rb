class SearchController < ApplicationController
    before_action :authenticate_user!
    # search 関数の定義
    def search
        @range = params[:range]
        search = params[:search]
        word = params[:word]

        if @range == '1'
            @users = User.search(search,word)
        elsif @range == '2'
            @books = Book.search(search,word)
        end
    
    end


end
