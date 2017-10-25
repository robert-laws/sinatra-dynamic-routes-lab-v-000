require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    new_name = @name.reverse
    "#{new_name}"
  end
end