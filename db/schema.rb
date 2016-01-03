Sequel.migration do
  change do
    create_table(:collectors) do
      Integer :payment_day
      Integer :frequency
      TrueClass :recurrent
    end
    
    create_table(:schema_info) do
      Integer :version, :default=>0, :null=>false
    end
  end
end
