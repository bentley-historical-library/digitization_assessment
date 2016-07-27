require 'db/migrations/utils'

Sequel.migration do

  up do

    create_table(:digitization_assessment) do
      primary_key :id

      Integer :lock_version, :default => 0, :null => false
      Integer :json_schema_version, :null => false

      Integer :archival_object_id, :null => true

      Integer :assessed
      Integer :description_updated
      TextField :assessment_notes

      apply_mtime_columns
    end

    alter_table(:digitization_assessment) do
      add_foreign_key([:archival_object_id], :archival_object, :key => :id)
    end

  end

  down do
  end

end
