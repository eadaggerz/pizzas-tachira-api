# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::Tables', type: :request do
  describe 'GET /index' do
    let!(:tables) { (1..10).map { Table.create } }

    before do
      get '/api/tables'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it "body has tables" do
      body = JSON.parse(response.body)

      expect(body['data'].length).to eq tables.count

      tables.each_with_index do |table, index|
        expect(body['data'][index]['id']).to eq table.id.to_s
        expect(body['data'][index]['attributes']['status']).to eq table.status
        expect(body['data'][index]['attributes']['updated_at'].to_date).to eq table.created_at.to_date
      end
    end

  end
end
