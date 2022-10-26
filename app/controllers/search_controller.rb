class SearchController < ApplicationController
    def catalog
        #byebug
        @results = Book.where("name like ?", "%#{params[:query].downcase}%")
        #render json: @results
        if request.xhr?
            respond_to do |format|
                format.js { render partial: 'search/ajax' }
            end
        end
    end

    def catalog_ajax
        @results = Book.all
        render json: @results
    end
end