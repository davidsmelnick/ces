json.extract! client, :id, :SPID, :VIscore, :rank, :created_at, :updated_at
json.url client_url(client, format: :json)
