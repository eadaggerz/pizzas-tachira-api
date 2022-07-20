# frozen_string_literal: true

module Api
  # This class handles tables related requests
  class TablesController < ApplicationController
    def index
      tables = Table.all

      render json: TableSerializer.new(tables).serializable_hash.to_json
    end
  end
end
