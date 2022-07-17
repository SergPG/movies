require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
   
    describe 'GET #show ' do
        let!(:movie) {create :movie }
        # before { get :show }

        # it { subject render_template('show') }

    end    

end