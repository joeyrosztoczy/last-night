get '/party/:party_id' do 
  session[:user_id] = 1
  @party = Party.find(params[:party_id])
  erb :_list_partiers
end
