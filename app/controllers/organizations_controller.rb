class OrganizationsController < ApplicationController

        def index
            render json: Organization.all 
        end
    
        def show
            organization = Organization.find(params[:id])
          
            render json: organization
        end
    
        def create
            # organization = organization.new(organizations_params)
            # if organization.valid? 
            #     organization.save
            #     render json: organization 
            # else 
            #     render json: {message: "Error"}, status: :not_acceptable
            # end
        end
    
        def update
            organization = Organization.find(params[:id])
            Organization.update(organizations_params)
            render json: organization
        end
    
        private 
    
        def organizations_params
            params.permit(:name, :description, :icon_url)
        end
    
    
end
