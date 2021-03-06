# frozen_string_literal: true

require 'sequel'

Sequel.migration do
  change do
    create_table(:problems) do
      uuid :id, primary_key: true
      foreign_key :group_id, table: :groups

      String :description, null: false
      String :latitude_secure, null: false
      String :longitude_secure, null: false
      String :date, null: false

      DateTime :created_at
      DateTime :updated_at
    end
  end
end
