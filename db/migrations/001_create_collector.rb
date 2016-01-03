Sequel.migration do
  change do
    create_table(:collectors) do
      Fixnum  :payment_day
      Fixnum  :frequency
      Boolean :recurrent
    end
  end
end
