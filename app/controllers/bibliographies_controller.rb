class BibliographiesController < ApplicationController
    layout "application"

    def index
        @bibs = Bibliography.all
    end

    def show
        @bib = Bibliography.find(params[:id])
    end

    def new
        @bib = Bibliography.new
    end

    def edit
        @bib = Bibliography.find(params[:id])
    end

    def create
        @bib = Bibliography.new(bib_params)

        if @bib.save
            redirect_to @bib
        else
            render 'new'
        end
 
        # @bib.save
        # redirect_to @bib
    end

    def update
        @bib = Bibliography.find(params[:id])

        if @bib.update(bib_params)
            redirect_to @bib
        else
            render 'edit'
        end
    end

    def destroy
        @bib = Bibliography.find(params[:id])
        @bib.destroy
    
        redirect_to bibliographies_path
    end

    private
        def bib_params
            params.require(:bibliography).permit(:reference_type, :title, :title_section, :author, :place_published, :publisher, 
                :year_published, :edition, :editor, :pages, :number_of_volumes, :isbn, :title_series, :editor_series,
                :volume_series, :url, :doi, :abstract, :submitter)
        end
end