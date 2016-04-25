json.array!(@fotos) do |foto|
  json.extract! foto, :id, :title, :subtitle
  json.url foto_url(foto, format: :json)
end
