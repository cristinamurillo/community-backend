class OpportunitiesController < ApplicationController

    def index
        render json: Opportunity.all 
    end

    def show
        opportunity = Opportunity.find(params[:id])
      
        render json: opportunity
    end

    def create
        # opportunity = Opportunity.new(opportunities_params)
        # if opportunity.valid? 
        #     opportunity.save
        #     render json: opportunity 
        # else 
        #     render json: {message: "Error"}, status: :not_acceptable
        # end
    end

    def update
        opportunity = Opportunity.find(params[:id])
        opportunity.update(opportunities_params)
        render json: opportunity
    end

    private 

    def opportunities_params
        params.permit(:title, :description, :img_url, :location, :date, :paid)
    end

end
