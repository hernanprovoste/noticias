json.array!(@ensayos) do |ensayo|
  json.extract! ensayo, :id, :titlo
  json.url ensayo_url(ensayo, format: :json)
end
