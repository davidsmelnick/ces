class ProjType < ApplicationRecord
  has_many :providers, :foreign_key => :sp_proj_type_id, :primary_key => :sp_proj_type_id
end
