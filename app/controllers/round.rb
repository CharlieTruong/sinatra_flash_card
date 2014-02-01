get "/round/:deck_id" do
  session[:round_id] = Round.create(user_id: session[:user_id]).id
  erb :rounds
end

get "/randomcards" do
  content_type :json
  deck_id = params[:location][-1]
  cards = Card.create_deck(deck_id)
  cards.to_json
end



