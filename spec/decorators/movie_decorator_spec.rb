# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MovieDecorator do
  describe '#average_rating_format' do
    subject { movie.decorate.average_rating_format }

    let(:movie) { create :movie }
    let(:user) { create :user }

    it { is_expected.to eq('0.0') }

    context 'when movie has rating' do
      before { user.rate movie, 5 }

      it { is_expected.to eq('5.0') }
    end
  end
end
