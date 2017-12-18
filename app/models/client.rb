class Client < ApplicationRecord
  
  has_many :matches, :foreign_key => :sp_client_id, :primary_key => :sp_client_id 
  has_many :eligibilities, :foreign_key => :sp_client_id, :primary_key => :sp_client_id
  
#  def self.import(file, myclass)
#    CSV.foreach(file.path, headers: true) do |row|
#      myclass.create!(row.to_hash)
#    end
#  end
  
end
