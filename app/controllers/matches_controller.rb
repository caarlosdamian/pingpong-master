class MatchesController < ApplicationController
    def show
        @match = Match.find(params[:id])
      end
      def new
        @match = Match.new
      end
    
      def index
        @matches = Match.all
      end
    
      def create
        @match = Match.new(match_params)
    
        if @match.save!
          redirect_to @match
        else
          render :new
        end
    
      end
    
      def edit
        @match = Match.find(params[:id])
      end
    
      def update
        @match = Match.find(params[:id])
    
        if @match.update(match_params)
          redirect_to @match
        else
          render 'edit'
        end
      end
    
      def destroy
        @match = Match.find(params[:id])
        @match.destroy
    
        redirect_to match_path
      end
       
      private
        def match_params
          params.require(:match).permit(:date,:yscore,:tscore, :opponent_id)
        end
end
