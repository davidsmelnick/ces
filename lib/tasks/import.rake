namespace :import do
  desc "TODO"
  task client_csv: :environment do
    file = File.open('/home/ubuntu/workspace/ces/db/csv/client.csv')
    Client.import_file(file)
  end
  
  desc "TODO"
  task provider_csv: :environment do
    file = File.open('/home/ubuntu/workspace/ces/db/csv/provider.csv')
    Provider.import_file(file)
  end
  
  desc "TODO"
  task eligibility_csv: :environment do
    file = File.open('/home/ubuntu/workspace/ces/db/csv/eligibility.csv')
    Eligibility.import_file(file)
  end

  desc "all three imports"
  task csvs: :environment do
    p_file = File.open('/home/ubuntu/workspace/ces/db/csv/provider.csv')
    c_file = File.open('/home/ubuntu/workspace/ces/db/csv/client.csv')
    e_file = File.open('/home/ubuntu/workspace/ces/db/csv/eligibility.csv')
    Client.connection.execute("DELETE FROM Clients")
    Provider.connection.execute("DELETE FROM Providers")
    Eligibility.connection.execute("DELETE FROM Eligibilities")
    Client.import_file(c_file)
    Provider.import_file(p_file)
    Eligibility.import_file(e_file)
  end

end
