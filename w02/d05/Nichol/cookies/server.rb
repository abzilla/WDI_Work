require "sinatra"
require "sinatra/reloader"
require "sinatra/cookies"

require "pry"

enable :sessions
set :sessions, true

get "/cookies" do
	response.set_cookie(:c_is_for, :value => "cookie", :expires => Time.new(2020,1,13))
	
	erb :index

end

get "/example_session" do
	session[:c_is_for] = "cookie"
end

get "/read_cookies" do
	@output = request.cookies["c_is_for"]
	erb :index
end

get "/" do
	erb :login_form
end

post "/sessions" do
	if params[:password] == "batman"
		session[:logged_in] = true
	else
		redirect "/"
	end


end

get "/super_secret_info" do

  if session[:logged_in] == true
  	erb :super_secret
  else
  	redirect "/"
  end


end





