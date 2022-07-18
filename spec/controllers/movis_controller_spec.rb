require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
   
    describe 'GET #show ' do
         let!(:movie) {create :movie }
         let(:params) { { id: movie.id } }
       
      it "returns a 200" do
         get :show, params: params   
         expect(response).to have_http_status(:ok) 
      end  
    end    
end