class ApplicationRecord < ActiveRecord::Base
  require 'csv'
  self.abstract_class = true
  def self.import_file(file)
    CSV.foreach(file.path, headers: true) do |row|
      self.create!(row.to_hash)
    end
  end
end
