json.array!(@cards) do |card|
  json.extract! card, :id, :card_id, :name, :text, :cost, :type1, :type2
  json.url card_url(card, format: :json)
end
