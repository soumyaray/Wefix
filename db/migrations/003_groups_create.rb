# frozen_string_literal: true

require 'sequel'

Sequel.migration do
  change do
    create_table(:groups) do
      primary_key :id
      foreign_key :owner_id, :accounts

      String :name, unique: false, null: false
      String :description, unique: false

      DateTime :created_at
      DateTime :updated_at
    end
  end
end
