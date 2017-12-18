namespace :match do
  desc "TODO"
  task single: :environment do
    Match.exec_match(Match.first)
  end

  desc "TODO"
  task batch: :environment do
    Match.where('sp_client_id IS NULL').each do |match_instance|
      Match.exec_match(match_instance)
    end
  end

end
