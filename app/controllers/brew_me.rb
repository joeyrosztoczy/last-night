get '/party/:party_id' do 
  @party = Party.find(params[:party_id])
  erb :party
end

post '/brewme' do 
  @party = Party.find(params[:party_id])
  puts "in the brewme route! party id is: #{@party.id}"
  @last_night = LastNight.where(party_id: @party.id, user_id: session[:user_id]).first
  @last_night.update(brew_count: @last_night.brew_count + 1)
  erb :_list_partiers, layout: false
end