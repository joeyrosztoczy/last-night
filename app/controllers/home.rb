get '/home' do 
	erb :home
end


post '/home/create' do 
	Party.create(name: params[:name], location: params[:location])
	redirect "/home"
end

post '/home/delete/:party_id' do 
	@party = Party.find(params[:party_id])
	@party.destroy
	redirect 'home'
end

