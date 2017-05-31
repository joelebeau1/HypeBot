# Shows confirmation page after user is successfully complimented by HypeBot
get '/users/:id' do
  @user = User.find(params[:id])
  erb :success
end

post '/users' do
  @user = User.find_or_initialize_by(params[:user])
  if @user.save
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :index
  end
end
