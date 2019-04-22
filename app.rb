class App < Sinatra::Base

	set :views, "views"

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		@name = "Joe"
		erb :goodbye
	end

	get '/date' do
		@date = Date.today.strftime("%A, %B %d, %Y")
		erb :date
	end
end
