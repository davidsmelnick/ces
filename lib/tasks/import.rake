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

end
