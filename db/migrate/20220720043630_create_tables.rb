# frozen_string_literal: true

class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
