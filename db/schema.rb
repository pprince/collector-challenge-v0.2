Sequel.migration do
  change do
    create_table(:collectors) do
      Integer :payment_day
      Integer :frequency
      TrueClass :recurrent
      Date      :created_at
    end

    create_table(:schema_info) do
      Integer :version, :default=>0, :null=>false
    end
  end
end
